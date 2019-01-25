`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/09 15:21:27
// Design Name: 
// Module Name: change_HZ
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


module change_HZ(
    input clk,
    output reg clk_change
    );
    parameter CYC=10;
    reg [21:0] counter;
    initial begin
    clk_change=0;
    counter=0;
    end
    always @(posedge clk)
        if(counter<=CYC)begin 
            counter=counter+1;
            end
         else begin 
            counter =0;
            clk_change=~clk_change;
            end   
endmodule
