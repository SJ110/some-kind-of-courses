`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/09 15:22:24
// Design Name: 
// Module Name: light_main
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

module light_main(
    input clk_change,
    input [3:0] choose,
    output reg[7:0] light,
    output reg[7:0] light_part
    );
//    reg [7:0] light;
//    reg [7:0] light_part;
    reg [4:0] counter;
    wire clk_change; //
    initial begin
    counter =1;
    light=8'b11111111;
    light_part=8'b11111111;
    end
    always @(posedge clk_change)
        begin
         if(counter==0)    //����ʾ
             begin
             light=8'b11111111;
             light_part=8'b11111111;
             end
        
       else  if(counter==1)                      //������ʾH-E-L-L-O��ʵ��hello��ʾ��� 
            begin
            light=8'b11101111;
            light_part=8'b10001001;  //H
            end
        else if(counter==2)
            begin
            light=8'b11110111;
            light_part=8'b10000110;  //E
            end    
        else if(counter==3)    //L
            begin 
            light=8'b11111011;
            light_part=8'b11000111;
            end
        else if(counter==4)  //L
            begin
            light=8'b11111101;
            light_part=8'b11000111; 
            end
        else if(counter==5)  //O
            begin
            light=8'b11111110;
            light_part=8'b11000000;
            end
               
        else if(counter==6)     //��ʾ0Ԫ
            begin
            light=8'b11111110;
            light_part=8'b11000000;
            end
            
        else if(counter==7)     //��ʾ0.5Ԫ
            begin
            light=8'b11111101;
            light_part=8'b01000000;
            end    
        else if(counter==8)
            begin
            light=8'b11111110;
            light_part=8'b10010010;
            end
            
        else if(counter==9)      //��ʾ1Ԫ
            begin
            light=8'b11111110;
            light_part=8'b11111001;
            end
            
        else if(counter==10)     //��ʾ2Ԫ
            begin
            light=8'b11111110;
            light_part=8'b10100100;
            end
            
       else  if(counter==11)         //��ʾ3Ԫ
            begin
            light=8'b11111110;
            light_part=8'b10110000;
            end   
            
       else if(counter==12)          //��ʾ4Ԫ
            begin
            light=8'b11111110;
            light_part=8'b10011001;
            end
            
      else if(counter==13)           //��ʾ5Ԫ
            begin
            light=8'b11111110;
            light_part=8'b10010010;
            end
     
      else if(counter==14)           //��ʾ7.5Ԫ
            begin
            light=8'b11111101;
            light_part=8'b01111000;
            end
      else if(counter==15)
            begin
            light=8'b11111110;
            light_part=8'b10010010;
            end
      
      else if(counter==16)           //��ʾ10Ԫ
            begin
            light=8'b11111101;
            light_part=8'b11111001;
            end
      else if(counter==17)
            begin
            light=8'b11111110;
            light_part=8'b11000000;
            end
            
               
            if(choose==4'b0000)begin                //��ʾ0Ԫ
            counter=6;
            end
       else if(choose==4'b0001)begin                //��ʾ0.5Ԫ
            if(counter==7)counter=8;
          else if(counter==8)counter=7;
          else counter=7;
            end
       else if(choose==4'b0010)begin                //��ʾ1Ԫ
            counter=9;
            end
       else if(choose==4'b0011)begin                //��ʾ2Ԫ
            counter=10;
            end
       else if(choose==4'b0100)begin                //��ʾ3Ԫ
            counter=11;
            end
       else if(choose==4'b0101)begin                //��ʾ4Ԫ
            counter=12;
            end
       else if(choose==4'b0110)begin                //��ʾ5Ԫ
            counter=13;
            end
       else if(choose==4'b0111)begin                //��ʾ7.5Ԫ
            if(counter==14)counter=15;
          else if(counter==15)counter=14;
          else counter=14;
            end
       else if(choose==4'b1000)begin                //��ʾ10Ԫ
            if(counter==16)counter=17;
          else if(counter==17)counter=16;
          else counter=16;
            end
       else if(choose==4'b1001)begin                //��ʾhello
              if(counter==1)counter=2;
          else if(counter==2)counter=3;
          else if(counter==3)counter=4;
          else if(counter==4)counter=5;
          else counter=1;
            end
       else if(choose==4'b1010)begin                //����ʾ
            counter=0;
            end
       else begin                                   //����ʾ
            counter=0;
            end
              
        end
endmodule
