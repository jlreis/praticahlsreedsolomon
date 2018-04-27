//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Tue Apr 17 14:51:11 2018
//Host        : Lesc_pc_01 running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
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

  wire ap_clk_1;
  wire ap_rst_1;
  wire ap_start_1;
  wire [7:0]codeidx_1;
  wire codeidx_ap_vld_1;
  wire [7:0]d_0_1;
  wire [7:0]d_10_1;
  wire [7:0]d_11_1;
  wire [7:0]d_1_1;
  wire [7:0]d_2_1;
  wire [7:0]d_3_1;
  wire [7:0]d_4_1;
  wire [7:0]d_5_1;
  wire [7:0]d_6_1;
  wire [7:0]d_7_1;
  wire [7:0]d_8_1;
  wire [7:0]d_9_1;
  wire rs_erasure_0_ap_done;
  wire rs_erasure_0_ap_idle;
  wire rs_erasure_0_ap_ready;
  wire [7:0]rs_erasure_0_c_0;
  wire rs_erasure_0_c_0_ap_vld;
  wire [7:0]rs_erasure_0_c_1;
  wire rs_erasure_0_c_1_ap_vld;
  wire [7:0]rs_erasure_0_c_2;
  wire rs_erasure_0_c_2_ap_vld;
  wire [7:0]rs_erasure_0_c_3;
  wire rs_erasure_0_c_3_ap_vld;
  wire [15:0]survival_pattern_1;

  assign ap_clk_1 = ap_clk;
  assign ap_done = rs_erasure_0_ap_done;
  assign ap_idle = rs_erasure_0_ap_idle;
  assign ap_ready = rs_erasure_0_ap_ready;
  assign ap_rst_1 = ap_rst;
  assign ap_start_1 = ap_start;
  assign c_0[7:0] = rs_erasure_0_c_0;
  assign c_0_ap_vld = rs_erasure_0_c_0_ap_vld;
  assign c_1[7:0] = rs_erasure_0_c_1;
  assign c_1_ap_vld = rs_erasure_0_c_1_ap_vld;
  assign c_2[7:0] = rs_erasure_0_c_2;
  assign c_2_ap_vld = rs_erasure_0_c_2_ap_vld;
  assign c_3[7:0] = rs_erasure_0_c_3;
  assign c_3_ap_vld = rs_erasure_0_c_3_ap_vld;
  assign codeidx_1 = codeidx[7:0];
  assign codeidx_ap_vld_1 = codeidx_ap_vld;
  assign d_0_1 = d_0[7:0];
  assign d_10_1 = d_10[7:0];
  assign d_11_1 = d_11[7:0];
  assign d_1_1 = d_1[7:0];
  assign d_2_1 = d_2[7:0];
  assign d_3_1 = d_3[7:0];
  assign d_4_1 = d_4[7:0];
  assign d_5_1 = d_5[7:0];
  assign d_6_1 = d_6[7:0];
  assign d_7_1 = d_7[7:0];
  assign d_8_1 = d_8[7:0];
  assign d_9_1 = d_9[7:0];
  assign survival_pattern_1 = survival_pattern[15:0];
  design_2_rs_erasure_0_0 rs_erasure_0
       (.ap_clk(ap_clk_1),
        .ap_done(rs_erasure_0_ap_done),
        .ap_idle(rs_erasure_0_ap_idle),
        .ap_ready(rs_erasure_0_ap_ready),
        .ap_rst(ap_rst_1),
        .ap_start(ap_start_1),
        .c_0(rs_erasure_0_c_0),
        .c_0_ap_vld(rs_erasure_0_c_0_ap_vld),
        .c_1(rs_erasure_0_c_1),
        .c_1_ap_vld(rs_erasure_0_c_1_ap_vld),
        .c_2(rs_erasure_0_c_2),
        .c_2_ap_vld(rs_erasure_0_c_2_ap_vld),
        .c_3(rs_erasure_0_c_3),
        .c_3_ap_vld(rs_erasure_0_c_3_ap_vld),
        .codeidx(codeidx_1),
        .codeidx_ap_vld(codeidx_ap_vld_1),
        .d_0(d_0_1),
        .d_1(d_1_1),
        .d_10(d_10_1),
        .d_11(d_11_1),
        .d_2(d_2_1),
        .d_3(d_3_1),
        .d_4(d_4_1),
        .d_5(d_5_1),
        .d_6(d_6_1),
        .d_7(d_7_1),
        .d_8(d_8_1),
        .d_9(d_9_1),
        .survival_pattern(survival_pattern_1));
endmodule
