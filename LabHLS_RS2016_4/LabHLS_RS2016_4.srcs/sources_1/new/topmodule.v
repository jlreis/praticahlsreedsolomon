//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : uart_led.v
//  Parent   : None
//  Children : uart_rx.v led_ctl.v 
//
//  Description: 
//     Ties the UART receiver to the LED controller
//
//  Parameters:
//     None
//
//  Local Parameters:
//
//  Notes       : 
//
//  Multicycle and False Paths
//    None
//

`timescale 1ns/1ps
module topmodule (
  // Write side inputs
  input            clk_pin,      // Clock input (from pin)
  input            rst_pin,      // Active HIGH reset (from pin)
  input            btn_pin,      // Button to swap high and low bits
  input            rxd_pin,      // RS232 RXD pin - directly from pin
  output     [7:0] led_pins      // 8 LED outputs
);

//***************************************************************************
// Parameter definitions
//***************************************************************************
  parameter BAUD_RATE           = 115_200;   
  parameter CLOCK_RATE          = 100_000_000;

//***************************************************************************
// Reg declarations
//***************************************************************************

//***************************************************************************
// Wire declarations
//***************************************************************************

  // Synchronized reset
  wire             rst_clk_rx;

  // Synchronized button
  wire             btn_clk_rx;

  // Between uart_rx and led_ctl
  wire [7:0]       rx_data;      // Data output of uart_rx
  wire             rx_data_rdy;  // Data ready output of uart_rx
  wire ap_start;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
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
  wire [7:0]d_10;
  wire [7:0]d_11;
  wire [7:0]d_1;
  wire [7:0]d_2;
  wire [7:0]d_3;
  wire [7:0]d_4;
  wire [7:0]d_5;
  wire [7:0]d_6;
  wire [7:0]d_7;
  wire [7:0]d_8;
  wire [7:0]d_9;
  wire [15:0]survival_pattern;

//***************************************************************************
// Code
//***************************************************************************

  // Metastability harden the rst - this is an asynchronous input to the
  // system (from a pushbutton), and is used in synchronous logic. Therefore
  // it must first be synchronized to the clock domain (clk_pin in this case)
  // prior to being used. A simple metastability hardener is appropriate here.
  meta_harden meta_harden_rst_i0 (
    .clk_dst      (clk_pin),
    .rst_dst      (1'b0),    // No reset on the hardener for reset!
    .signal_src   (rst_pin),
    .signal_dst   (rst_clk_rx)
  );

  // And the button input
  meta_harden meta_harden_btn_i0 (
    .clk_dst      (clk_pin),
    .rst_dst      (rst_clk_rx),
    .signal_src   (btn_pin),
    .signal_dst   (btn_clk_rx)
  );

  uart_rx #(
    .CLOCK_RATE   (CLOCK_RATE),
    .BAUD_RATE    (BAUD_RATE) 
  ) uart_rx_i0 (
    .clk_rx      (clk_pin),
    .rst_clk_rx  (rst_clk_rx),

    .rxd_i       (rxd_pin),
    .rxd_clk_rx  (),
    
    .rx_data_rdy (rx_data_rdy),
    .rx_data     (rx_data),
    .frm_err     ()
  );

  StateMachine control (
    .clk      (clk_pin),
    .rst_clk_rx  (rst_clk_rx),
    .data     (rx_data),
    .rx_data_rdy (rx_data_rdy),
    .codeidx(codeidx),
    .codeidxvld(codeidx_ap_vld),
    .d_0(d_0),
    .d_10(d_10),
    .d_11(d_11),
    .d_1(d_1),
    .d_2(d_2),
    .d_3(d_3),
    .d_4(d_4),
    .d_5(d_5),
    .d_6(d_6),
    .d_7(d_7),
    .d_8(d_8),
    .d_9(d_9),
    .ap_start(ap_start),
    .survival_pattern(survival_pattern));

   design_2 design_2_i
         (.ap_clk(clk_pin),
          .ap_done(ap_done),
          .ap_idle(ap_idle),
          .ap_ready(ap_ready),
          .ap_rst(rst_pin),
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
     assign led_pins[7:0]={ap_done,ap_idle,ap_ready,c_0_ap_vld,c_1_ap_vld,c_2_ap_vld,c_3_ap_vld};
endmodule
