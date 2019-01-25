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
         if(counter==0)    //无显示
             begin
             light=8'b11111111;
             light_part=8'b11111111;
             end
        
       else  if(counter==1)                      //依次显示H-E-L-L-O，实现hello显示输出 
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
               
        else if(counter==6)     //显示0元
            begin
            light=8'b11111110;
            light_part=8'b11000000;
            end
            
        else if(counter==7)     //显示0.5元
            begin
            light=8'b11111101;
            light_part=8'b01000000;
            end    
        else if(counter==8)
            begin
            light=8'b11111110;
            light_part=8'b10010010;
            end
            
        else if(counter==9)      //显示1元
            begin
            light=8'b11111110;
            light_part=8'b11111001;
            end
            
        else if(counter==10)     //显示2元
            begin
            light=8'b11111110;
            light_part=8'b10100100;
            end
            
       else  if(counter==11)         //显示3元
            begin
            light=8'b11111110;
            light_part=8'b10110000;
            end   
            
       else if(counter==12)          //显示4元
            begin
            light=8'b11111110;
            light_part=8'b10011001;
            end
            
      else if(counter==13)           //显示5元
            begin
            light=8'b11111110;
            light_part=8'b10010010;
            end
     
      else if(counter==14)           //显示7.5元
            begin
            light=8'b11111101;
            light_part=8'b01111000;
            end
      else if(counter==15)
            begin
            light=8'b11111110;
            light_part=8'b10010010;
            end
      
      else if(counter==16)           //显示10元
            begin
            light=8'b11111101;
            light_part=8'b11111001;
            end
      else if(counter==17)
            begin
            light=8'b11111110;
            light_part=8'b11000000;
            end
            
               
            if(choose==4'b0000)begin                //显示0元
            counter=6;
            end
       else if(choose==4'b0001)begin                //显示0.5元
            if(counter==7)counter=8;
          else if(counter==8)counter=7;
          else counter=7;
            end
       else if(choose==4'b0010)begin                //显示1元
            counter=9;
            end
       else if(choose==4'b0011)begin                //显示2元
            counter=10;
            end
       else if(choose==4'b0100)begin                //显示3元
            counter=11;
            end
       else if(choose==4'b0101)begin                //显示4元
            counter=12;
            end
       else if(choose==4'b0110)begin                //显示5元
            counter=13;
            end
       else if(choose==4'b0111)begin                //显示7.5元
            if(counter==14)counter=15;
          else if(counter==15)counter=14;
          else counter=14;
            end
       else if(choose==4'b1000)begin                //显示10元
            if(counter==16)counter=17;
          else if(counter==17)counter=16;
          else counter=16;
            end
       else if(choose==4'b1001)begin                //显示hello
              if(counter==1)counter=2;
          else if(counter==2)counter=3;
          else if(counter==3)counter=4;
          else if(counter==4)counter=5;
          else counter=1;
            end
       else if(choose==4'b1010)begin                //无显示
            counter=0;
            end
       else begin                                   //无显示
            counter=0;
            end
              
        end
endmodule
