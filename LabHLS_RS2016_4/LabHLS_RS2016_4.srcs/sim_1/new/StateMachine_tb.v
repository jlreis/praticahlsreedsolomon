`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2018 16:25:23
// Design Name: 
// Module Name: StateMachine_tb
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


module StateMachine_tb();
    reg clk;
    reg [7:0] data;
    reg rx_data_rdy;
    wire codeidxvld;
    wire   ap_clk;
    wire   ap_rst;
    wire   ap_start;
    wire [7:0] d_0;
    wire [7:0] d_1;
    wire [7:0] d_2;
    wire [7:0] d_3;
    wire [7:0] d_4;
    wire [7:0] d_5;
    wire [7:0] d_6;
    wire [7:0] d_7;
    wire [7:0] d_8;
    wire [7:0] d_9;
    wire [7:0] d_10;
    wire[7:0] d_11;
    wire [15:0] survival_pattern;
    wire [7:0] codeidx;
    
StateMachine dut(
    .clk(clk),
    .data(data),
    .rx_data_rdy(rx_data_rdy),
    .codeidxvld(codeidxvld),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
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
    .survival_pattern(survival_pattern),
    .codeidx(codeidx)
    );
    initial begin
    clk=0;
    end
    always
    #1  clk=!clk;
    initial begin
    rx_data_rdy=0;
    data=0;
    #18;
    rx_data_rdy=1;
    data=7'd2;
    #5 rx_data_rdy=0;
    #7;
    rx_data_rdy=1;
    data=7'd7;
    #3 rx_data_rdy=0;
    #3;
    rx_data_rdy=1;
    data=7'd15;
    end
endmodule
