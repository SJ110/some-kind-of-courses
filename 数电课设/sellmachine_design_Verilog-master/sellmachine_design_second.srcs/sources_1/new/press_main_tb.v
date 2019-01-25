`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/15 21:12:52
// Design Name: 
// Module Name: press_main_tb
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


module press_main_tb();
reg clk;
reg [3:0]choose;
wire [7:0]light;
wire [7:0]light_part;
wire clk_change;
initial begin
choose=4'b1001; //hello
clk=1;
#200choose=4'b1000;//10
#100 choose=4'b0100;//3
end
always #1 clk=~clk;
change_HZ test1(clk,clk_change);
light_main test(clk_change,choose,light,light_part);
endmodule
