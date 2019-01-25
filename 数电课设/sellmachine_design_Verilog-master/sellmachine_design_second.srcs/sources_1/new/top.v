`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 09:41:58
// Design Name: 
// Module Name: top
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


    
module top(
        input Reset,        //总清零开关
        input clk,          //系统时钟
        input op_start,     //售卖开始开关
        input coin_val,     //coin_val=0;表示1元，coin_val=1;表示10元
        input coin_putin,   //确定投入现金的脉冲开关
        input cancel_flag,  //取消操作开关
        input buy_confirm,  //确定购买开关
        input goods_choose, //选择商品类型信号 0为2.5元商品，1为5元商品
        input ensure,       //确定按钮
        output  hold_ind,       //机器占用信号
        output  drinktk_ind,    //取饮料信号
        output  charge_ind,      //找零提示信号
        output  machine_on,      //机器运行信号
        output  wrong_dis,      //操作错误提示信号
        output  [7:0] light,        //此两输出变量为显示hello的输出信号
        output  [7:0] light_part 
        );
       
        wire clk_use; 
       sellmachine_design_second mysell_machine(Reset,clk,op_start,coin_val,coin_putin,cancel_flag,
        buy_confirm,goods_choose,ensure,hold_ind,drinktk_ind,charge_ind,machine_on,wrong_dis,light,light_part); 
endmodule
