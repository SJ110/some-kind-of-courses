

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module sellmachine_design_second(
    input Reset,        //总清零开关
    input clk,          //系统时钟
    input op_start,     //售卖开始开关
    input coin_val,     //coin_val=0;表示1元，coin_val=1;表示10元
    input coin_putin,   //确定投入现金的脉冲开关
    input cancel_flag,  //取消操作开关
    input buy_confirm,  //确定购买开关
    input goods_choose, //选择商品类型信号 0为2.5元商品，1为5元商品
    input ensure,       //确定按钮
    output reg hold_ind,       //机器占用信号
    output reg drinktk_ind,    //取饮料信号
    output reg charge_ind,      //找零提示信号
    output reg machine_on,      //机器运行信号
    output reg wrong_dis,      //操作错误提示信号
    output  [7:0] light,        //此两输出变量为显示hello的输出信号
    output  [7:0] light_part 
    );
    parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5,S6=6;
    reg [2:0] mealy_state;
    reg [2:0] mealy_nextstate;
    reg [3:0] charge_val        ;
    reg [20:0] count;           //用于延时3秒，0为待机状态
    reg judge;
    wire clk_use; 
    light_press display(clk_use,charge_val,light,light_part);  
    change_HZ press(clk,clk_use); 
    initial 
    begin
    mealy_state=S0;
    mealy_nextstate=S0;
    hold_ind=0;
    charge_ind=0;
    drinktk_ind=0;
    charge_val=4'b1010; //无显示
    machine_on=0;
    wrong_dis=0;
    count=0;
    judge=0;
    end
    always @(posedge clk_use)begin
    if(Reset==0)
            begin
            hold_ind<=0;             //机器未被占用
            drinktk_ind<=0;          //无法取饮料
            charge_ind<=0;           //没有找零
            charge_val<=4'b1010;       //退还0元
            wrong_dis<=0;        //不提示错误
            judge<=0;
            end
  else if(op_start==0)
            begin
            hold_ind<=0;             //机器未被占用
            drinktk_ind<=0;          //无法取饮料
            charge_ind<=0;           //没有找零
            charge_val<=4'b1010;       //退还0元
            wrong_dis<=0;        //不提示错误
            judge<=0;
            end
  else begin          
      if((mealy_state==S0)&&coin_putin&&coin_val&&(mealy_nextstate==S6))
           begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b1000;       //10元
                wrong_dis<=0;        //不提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S0)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S1))
           begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0010;       //1元
                wrong_dis<=0;        //不提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S1)&&cancel_flag&&(mealy_nextstate==S0))
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=1;           //找零
                charge_val<=4'b0010;       //1元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S1)&&coin_putin&&coin_val&&(mealy_nextstate==S1)) //投十元
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0010;       //1元
                wrong_dis<=1;        //提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S1)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S2))
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0011;       //2元
                wrong_dis<=0;        //不提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S1)&&buy_confirm&&(mealy_nextstate==S1)) //此时不能购买
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0010;       //1元
                wrong_dis<=1;        //提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S2)&&cancel_flag&&(mealy_nextstate==S0))
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=1;           //找零
                charge_val<=4'b0011;       //2元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S2)&&coin_putin&&coin_val&&(mealy_nextstate==S2))
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0011;       //2元
                wrong_dis<=0;        //提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S2)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S3))  //此时投入第三元
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0100;       //3元
                wrong_dis<=0;        //不提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S2)&&buy_confirm&&(mealy_nextstate==S2)) //S2投入2元 不能购买
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0011;       //2元
                wrong_dis<=1;        //提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S3)&&cancel_flag&&(mealy_nextstate==S0))
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=1;           //没有找零
                charge_val<=4'b0100;       //3元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S3)&&buy_confirm&&goods_choose&&(mealy_nextstate==S3)) //此时选择五元商品
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0100;       //3元
                wrong_dis<=0;        //提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S3)&&buy_confirm&&(goods_choose==0)&&(mealy_nextstate==S0)) //选择2.5元商品
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=1;          //取饮料
                charge_ind<=1;           //找零
                charge_val<=4'b0001;       //0.5元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S3)&&coin_putin&&coin_val&&(mealy_nextstate==S3)) //此时已投3元再投入10元
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0100;       //3元
                wrong_dis<=1;        //提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S3)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S4))
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0101;       //4元
                wrong_dis<=0;        //不提示错误
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S4)&&cancel_flag&&(mealy_nextstate==S0))
            begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=1;           //找零
                charge_val<=4'b0101;       //4元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S4)&&coin_putin&&coin_val&&(mealy_nextstate==S4)) //S4时投入10元
             begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0101;       //4元
                wrong_dis<=1;        //提示错误
                judge<=1;
                count<=0;
             end
     else if((mealy_state==S4)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S5))
             begin
                hold_ind<=1;             //机器未被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0110;       //5元
                wrong_dis<=0;        //不提示错误
                judge<=1;
                count<=0;
             end
     else if((mealy_state==S4)&&buy_confirm&&(mealy_nextstate==S4))
             begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0101;       //4元
                wrong_dis<=0;        //提示错误
                judge<=1;
                count<=0;
             end
     else if((mealy_state==S5)&&cancel_flag&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=1;           //找零
                charge_val<=4'b0110;       //5元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end
      else if((mealy_state==S5)&&buy_confirm&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=1;          //取饮料
                charge_ind<=1;           //找零为0，
                charge_val<=4'b0000;       //0元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end
     else if((mealy_state==S5)&&coin_putin&&(mealy_nextstate==S5)) //已投入5元，再投出错
              begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b0110;       //5元
                wrong_dis<=1;        //提示错误
                judge<=1;
                count<=0;
             end       
     else if((mealy_state==S6)&&cancel_flag&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=1;           //找零
                charge_val<=4'b1000;       //10元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end
     else if((mealy_state==S6)&&buy_confirm&&goods_choose&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=1;          //取饮料
                charge_ind<=1;           //找零
                charge_val<=4'b0110;       //5元    
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end
     else if((mealy_state==S6)&&buy_confirm&&(goods_choose==0)&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=1;          //取饮料
                charge_ind<=1;           //找零
                charge_val<=4'b0111;       //7.5元
                wrong_dis<=0;        //不提示错误
                if(count==0)count<=1;
                judge<=1;
             end         
     else if((mealy_state==S6)&&coin_putin&&(mealy_nextstate==S6))  //投入10元，再投报错
             begin
                hold_ind<=1;             //机器被占用
                drinktk_ind<=0;          //无法取饮料
                charge_ind<=0;           //没有找零
                charge_val<=4'b1000;       //10元
                wrong_dis<=1;        //提示错误
                judge<=1;
                count<=0;
             end
    end
    
    if(Reset&&op_start&&(judge==0)&&(mealy_state==S0))
        begin
        charge_val<=4'b1001;//hello
        end
 if(Reset&&op_start&&(mealy_state==S0))
   begin     
    if((count>0)&&(count<15000))count<=count+1;  //count=15000;
    else if((count==15000))
          begin
          hold_ind<=0;             //机器未被占用
          drinktk_ind<=0;          //无法取饮料
          charge_ind<=0;           //没有找零
          charge_val<=4'b1001;       //hello
          wrong_dis<=0;        //不提示错误
          judge<=1;
          end 
     end
   else if((Reset==0)||(op_start==0))
       begin
       charge_val<=4'b1010;   //无显示
       end    
       if (Reset==0) mealy_state <= S0;
        else if(op_start==0)mealy_state<=S0;
        else mealy_state <= mealy_nextstate;
       if(Reset)machine_on<=1;//
        else machine_on<=0;//

 
//    always @(posedge ensure)
       
           case(mealy_state)
                S0:begin
                    if(cancel_flag)         //取消操作则返回初始状态
                        begin 
                        mealy_nextstate = S0;
                        end
                    else if(coin_putin)     //投币后判定金钱币值
                        begin 
                            if (coin_val)           //投了10元，进入S6状态
                            begin
                            mealy_nextstate = S6;       //进入S6状态
                            end
                            else  begin             //投了1元，进入S1状态
                            mealy_nextstate = S1;       //进入S1状态
                            end
                        end
                    else if(buy_confirm)        //无法购买所以此操作无效，还在此状态循环
                        begin
                        mealy_nextstate = S0;
                        end 
                    else begin
                        mealy_nextstate = S0;                        
                        end
                    end
                S1:begin  
                   if(cancel_flag)          //付完1元后取消操作，返回S7状态
                       begin
                       mealy_nextstate = S0;    //回到S0状态
                       end
                   else if(coin_putin)      //继续投币
                       begin
                            if(coin_val)        // 错误地投了10元，状态不变，提示错误
                            begin
                            mealy_nextstate = S1;
                            end
                            else begin          // 投了1元，进入S2状态
                            mealy_nextstate = S2;
                            end
                       end
                  else if(buy_confirm)      //  错误地点击购买，状态不变，提示错误
                       begin
                       mealy_nextstate = S1;
                       end
                  else begin
                       mealy_nextstate = S1;                        
                       end
                    end
                S2:begin
                   if(cancel_flag)          //付完2元后取消操作，返回S0状态
                    begin
                    mealy_nextstate = S0;
                    end
                else if(coin_putin)         //继续投币         
                      begin
                         if(coin_val)     //错误地投了10元，状态不变，提示错误
                         begin
                         mealy_nextstate = S2;
                         end
                         else  begin             //投了1元，进入S3状态
                         mealy_nextstate = S3 ;
                         end
                       end
               else if(buy_confirm)         //错误地点击购买，状态不变，提示错误
                    begin
                    mealy_nextstate = S2;
                    end
               else begin
                    mealy_nextstate = S2;       
                    end 
                 end 
               S3:begin
                   if(cancel_flag)      //付了3元后取消操作，返回S7状态
                   begin
                   mealy_nextstate = S0;                    
                   end
                else if(buy_confirm)    //点击购买按钮
                     begin
                         if (goods_choose==0)   //如果选择的是2.5元商品，可以购买，找钱，回S7状态
                         begin
                         mealy_nextstate = S0;   
                         end
                         else begin     //如果选择的是5元商品，不可以购买，状态不变，提示错误
                         mealy_nextstate = S3;                        
                         end                            
                     end
                  else if(coin_putin)   //继续投币
                     begin 
                        if(goods_choose)            //选了5元商品
                         begin 
                             if(coin_val)           //错误地投了10元，状态不变，提示错误
                            begin
                            mealy_nextstate = S3;
                            end
                            else begin             //投了1元，进入S4状态
                            mealy_nextstate = S4 ;                                       
                            end
                        end
                       else begin       //选了2.5元的商品，仍要投币，状态不变，提示错误
                        mealy_nextstate = S3;                            
                        end
                     end    
                  else begin
                     mealy_nextstate = S3;                      
                     end
                  end
                S4:begin
                   if(cancel_flag)          //付了4元后取消操作，返回S0状态
                    begin
                    mealy_nextstate = S0;
                    end
                else if(coin_putin)         //继续投币
                    begin
                         if(coin_val)           // 错误地投了十元，状态不变，提示错误
                         begin
                         mealy_nextstate = S4;
                         end
                         else begin             //投了1元，进入S5状态
                         mealy_nextstate = S5;
                         end
                    end
               else if(buy_confirm)         //错误地点击购买，状态不变，提示错误
                    begin
                    mealy_nextstate =S4 ;
                    end
               else begin
                    mealy_nextstate = S4;    
                    end
                 end 
                S5:begin
                    if(cancel_flag)        //付了5元后取消操作，返回S7状态
                    begin
                    mealy_nextstate = S0;                   
                    end
                  else if(buy_confirm)      //点击购买，返回S0状态
                    begin
                    mealy_nextstate = S0;                   
                    end
                 else if(coin_putin)     //错误地点击投币按钮，状态不变，提示错误
                    begin
                    mealy_nextstate = S5;
                    end
                 else begin
                    mealy_nextstate = S5;                 
                    end
                 end
                S6:begin
                    if(cancel_flag)     //付了10元，点击取消操作按钮，返钱，返回S0状态
                    begin
                    mealy_nextstate = S0;                   
                    end 
                 else if(buy_confirm)
                    begin
                        if(goods_choose)        //购买5元商品，找零，返回S7状态
                        begin
                        mealy_nextstate = S0;                  
                        end
                        else begin              //购买2.5元商品，找零，返回S7状态
                        mealy_nextstate = S0;                  
                        end
                    end
                 else if(coin_putin)      //错误地点击投币按钮，状态不变，提示错误
                    begin
                    mealy_nextstate = S6;                                     
                    end
                 else begin
                    mealy_nextstate = S6;
                    end
                end
             endcase    
         end      
 
endmodule
