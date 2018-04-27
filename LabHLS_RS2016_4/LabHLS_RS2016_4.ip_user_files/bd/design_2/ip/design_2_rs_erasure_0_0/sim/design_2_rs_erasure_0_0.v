// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:rs_erasure:1.0
// IP Revision: 1804271432

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_2_rs_erasure_0_0 (
  codeidx_ap_vld,
  c_0_ap_vld,
  c_1_ap_vld,
  c_2_ap_vld,
  c_3_ap_vld,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  codeidx,
  c_0,
  c_1,
  c_2,
  c_3,
  d_0,
  d_1,
  d_2,
  d_3,
  d_4,
  d_5,
  d_6,
  d_7,
  d_8,
  d_9,
  d_10,
  d_11,
  survival_pattern
);

input wire codeidx_ap_vld;
output wire c_0_ap_vld;
output wire c_1_ap_vld;
output wire c_2_ap_vld;
output wire c_3_ap_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_2_ap_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum \
{}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long\
 minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME codeidx, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value \
false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 codeidx DATA" *)
input wire [7 : 0] codeidx;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_0 DATA" *)
output wire [7 : 0] c_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_1 DATA" *)
output wire [7 : 0] c_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_2 DATA" *)
output wire [7 : 0] c_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_3 DATA" *)
output wire [7 : 0] c_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_0 DATA" *)
input wire [7 : 0] d_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_1 DATA" *)
input wire [7 : 0] d_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_2 DATA" *)
input wire [7 : 0] d_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_3 DATA" *)
input wire [7 : 0] d_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_4 DATA" *)
input wire [7 : 0] d_4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_5 DATA" *)
input wire [7 : 0] d_5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_6 DATA" *)
input wire [7 : 0] d_6;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_7 DATA" *)
input wire [7 : 0] d_7;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_8, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_8 DATA" *)
input wire [7 : 0] d_8;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_9, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fals\
e}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_9 DATA" *)
input wire [7 : 0] d_9;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_10, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fal\
se}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_10 DATA" *)
input wire [7 : 0] d_10;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_11, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value fal\
se}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_11 DATA" *)
input wire [7 : 0] d_11;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME survival_pattern, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum \
{}} value false}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 survival_pattern DATA" *)
input wire [15 : 0] survival_pattern;

  rs_erasure inst (
    .codeidx_ap_vld(codeidx_ap_vld),
    .c_0_ap_vld(c_0_ap_vld),
    .c_1_ap_vld(c_1_ap_vld),
    .c_2_ap_vld(c_2_ap_vld),
    .c_3_ap_vld(c_3_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .codeidx(codeidx),
    .c_0(c_0),
    .c_1(c_1),
    .c_2(c_2),
    .c_3(c_3),
    .d_0(d_0),
    .d_1(d_1),
    .d_2(d_2),
    .d_3(d_3),
    .d_4(d_4),
    .d_5(d_5),
    .d_6(d_6),
    .d_7(d_7),
    .d_8(d_8),
    .d_9(d_9),
    .d_10(d_10),
    .d_11(d_11),
    .survival_pattern(survival_pattern)
  );
endmodule
