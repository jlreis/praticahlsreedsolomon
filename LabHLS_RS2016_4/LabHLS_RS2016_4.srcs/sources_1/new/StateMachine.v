`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2018 16:14:14
// Design Name: 
// Module Name: StateMachine
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


module StateMachine(
    input clk,
    input [7:0] data,
    input rx_data_rdy,
    input rst_clk_rx,
    output reg codeidxvld,
    output reg [7:0] d_0,
    output reg [7:0] d_1,
    output reg [7:0] d_2,
    output reg [7:0] d_3,
    output reg [7:0] d_4,
    output reg [7:0] d_5,
    output reg [7:0] d_6,
    output reg [7:0] d_7,
    output reg [7:0] d_8,
    output reg [7:0] d_9,
    output reg [7:0] d_10,
    output reg[7:0] d_11,
    output reg [15:0] survival_pattern,
    output reg [7:0] codeidx,
    output reg ap_start
    );
        reg  [7:0] d [11:0];
        reg  [15:0]surv_pat;
        reg  [7:0]cid;
        /*reg  [7:0] d1;
        reg  [7:0] d2;
        reg  [7:0] d3;
        reg  [7:0] d4;
        reg  [7:0] d5;
        reg  [7:0] d6;
        reg  [7:0] d7;
        reg  [7:0] d8;
        reg  [7:0] d9;
        reg  [7:0] d10;
        reg  [7:0] d11;*/
        reg  old_rx_data_rdy;
        reg  [1:0]state=2'b0;
        reg  [3:0]count=4'b0;
        always@(posedge clk)
        begin
            old_rx_data_rdy <= rx_data_rdy;
            if(rx_data_rdy && !old_rx_data_rdy)
                begin
                if(count==12)
                    begin
                    state=3;
                    count=0;
                    end//if
                case (state)
                    0:begin //atribuição case idx
                    if(data[7]==1'b1)begin
                        cid={1'b0,data[6:0]};
                        state=1;
                        end//endif
                    end
                    1:begin //survival pattern
                    surv_pat[7:0]=data;
                    state=2;
                    end
                    2:begin //survival pattern
                    surv_pat[15:8]=data;
                    state=3;
                    end
                    3:// atribuicao d[count]
                    begin
                    d[count]=data;
                    count=count+1;
                    end//case 2                  
                    endcase       
                end//end if
        end//end always
        always@(posedge clk)
        begin
        if (count==12)
            begin
            d_0<=d[0];
            d_1<=d[1];
            d_2<=d[2];
            d_3<=d[3];
            d_4<=d[4];
            d_5<=d[5];
            d_6<=d[6];
            d_7<=d[7];
            d_8<=d[8];
            d_9<=d[9];
            d_10<=d[10];
            d_11<=d[11];
            survival_pattern<=surv_pat;
            codeidx<=cid;
            codeidxvld<=1'b1;
            ap_start<=1'b1;
            end//endif
        else begin
            codeidxvld<=1'b0;
            ap_start<=1'b0;
            end//end else
            
        end//end always2
        
endmodule
