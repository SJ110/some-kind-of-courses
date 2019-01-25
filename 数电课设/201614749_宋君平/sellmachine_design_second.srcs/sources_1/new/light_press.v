`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/09 15:20:04
// Design Name: 
// Module Name: light_press
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


module light_press(
    input clk,
    input  [3:0] choose,
    output [7:0] light,
    output  [7:0] light_part
    );

//    change_HZ turn(clk,clk_change);
    light_main display(clk,choose,light,light_part);
endmodule
