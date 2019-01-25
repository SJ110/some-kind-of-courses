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
        input Reset,        //�����㿪��
        input clk,          //ϵͳʱ��
        input op_start,     //������ʼ����
        input coin_val,     //coin_val=0;��ʾ1Ԫ��coin_val=1;��ʾ10Ԫ
        input coin_putin,   //ȷ��Ͷ���ֽ�����忪��
        input cancel_flag,  //ȡ����������
        input buy_confirm,  //ȷ�����򿪹�
        input goods_choose, //ѡ����Ʒ�����ź� 0Ϊ2.5Ԫ��Ʒ��1Ϊ5Ԫ��Ʒ
        input ensure,       //ȷ����ť
        output  hold_ind,       //����ռ���ź�
        output  drinktk_ind,    //ȡ�����ź�
        output  charge_ind,      //������ʾ�ź�
        output  machine_on,      //���������ź�
        output  wrong_dis,      //����������ʾ�ź�
        output  [7:0] light,        //�����������Ϊ��ʾhello������ź�
        output  [7:0] light_part 
        );
       
        wire clk_use; 
       sellmachine_design_second mysell_machine(Reset,clk,op_start,coin_val,coin_putin,cancel_flag,
        buy_confirm,goods_choose,ensure,hold_ind,drinktk_ind,charge_ind,machine_on,wrong_dis,light,light_part); 
endmodule
