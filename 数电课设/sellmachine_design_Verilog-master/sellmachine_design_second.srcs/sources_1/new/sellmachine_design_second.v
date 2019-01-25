

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module sellmachine_design_second(
    input Reset,        //�����㿪��
    input clk,          //ϵͳʱ��
    input op_start,     //������ʼ����
    input coin_val,     //coin_val=0;��ʾ1Ԫ��coin_val=1;��ʾ10Ԫ
    input coin_putin,   //ȷ��Ͷ���ֽ�����忪��
    input cancel_flag,  //ȡ����������
    input buy_confirm,  //ȷ�����򿪹�
    input goods_choose, //ѡ����Ʒ�����ź� 0Ϊ2.5Ԫ��Ʒ��1Ϊ5Ԫ��Ʒ
    input ensure,       //ȷ����ť
    output reg hold_ind,       //����ռ���ź�
    output reg drinktk_ind,    //ȡ�����ź�
    output reg charge_ind,      //������ʾ�ź�
    output reg machine_on,      //���������ź�
    output reg wrong_dis,      //����������ʾ�ź�
    output  [7:0] light,        //�����������Ϊ��ʾhello������ź�
    output  [7:0] light_part 
    );
    parameter S0=0,S1=1,S2=2,S3=3,S4=4,S5=5,S6=6;
    reg [2:0] mealy_state;
    reg [2:0] mealy_nextstate;
    reg [3:0] charge_val        ;
    reg [20:0] count;           //������ʱ3�룬0Ϊ����״̬
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
    charge_val=4'b1010; //����ʾ
    machine_on=0;
    wrong_dis=0;
    count=0;
    judge=0;
    end
    always @(posedge clk_use)begin
    if(Reset==0)
            begin
            hold_ind<=0;             //����δ��ռ��
            drinktk_ind<=0;          //�޷�ȡ����
            charge_ind<=0;           //û������
            charge_val<=4'b1010;       //�˻�0Ԫ
            wrong_dis<=0;        //����ʾ����
            judge<=0;
            end
  else if(op_start==0)
            begin
            hold_ind<=0;             //����δ��ռ��
            drinktk_ind<=0;          //�޷�ȡ����
            charge_ind<=0;           //û������
            charge_val<=4'b1010;       //�˻�0Ԫ
            wrong_dis<=0;        //����ʾ����
            judge<=0;
            end
  else begin          
      if((mealy_state==S0)&&coin_putin&&coin_val&&(mealy_nextstate==S6))
           begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b1000;       //10Ԫ
                wrong_dis<=0;        //����ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S0)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S1))
           begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0010;       //1Ԫ
                wrong_dis<=0;        //����ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S1)&&cancel_flag&&(mealy_nextstate==S0))
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=1;           //����
                charge_val<=4'b0010;       //1Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S1)&&coin_putin&&coin_val&&(mealy_nextstate==S1)) //ͶʮԪ
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0010;       //1Ԫ
                wrong_dis<=1;        //��ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S1)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S2))
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0011;       //2Ԫ
                wrong_dis<=0;        //����ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S1)&&buy_confirm&&(mealy_nextstate==S1)) //��ʱ���ܹ���
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0010;       //1Ԫ
                wrong_dis<=1;        //��ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S2)&&cancel_flag&&(mealy_nextstate==S0))
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=1;           //����
                charge_val<=4'b0011;       //2Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S2)&&coin_putin&&coin_val&&(mealy_nextstate==S2))
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0011;       //2Ԫ
                wrong_dis<=0;        //��ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S2)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S3))  //��ʱͶ�����Ԫ
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0100;       //3Ԫ
                wrong_dis<=0;        //����ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S2)&&buy_confirm&&(mealy_nextstate==S2)) //S2Ͷ��2Ԫ ���ܹ���
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0011;       //2Ԫ
                wrong_dis<=1;        //��ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S3)&&cancel_flag&&(mealy_nextstate==S0))
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=1;           //û������
                charge_val<=4'b0100;       //3Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S3)&&buy_confirm&&goods_choose&&(mealy_nextstate==S3)) //��ʱѡ����Ԫ��Ʒ
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0100;       //3Ԫ
                wrong_dis<=0;        //��ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S3)&&buy_confirm&&(goods_choose==0)&&(mealy_nextstate==S0)) //ѡ��2.5Ԫ��Ʒ
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=1;          //ȡ����
                charge_ind<=1;           //����
                charge_val<=4'b0001;       //0.5Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S3)&&coin_putin&&coin_val&&(mealy_nextstate==S3)) //��ʱ��Ͷ3Ԫ��Ͷ��10Ԫ
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0100;       //3Ԫ
                wrong_dis<=1;        //��ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S3)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S4))
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0101;       //4Ԫ
                wrong_dis<=0;        //����ʾ����
                judge<=1;
                count<=0;
             end 
     else if((mealy_state==S4)&&cancel_flag&&(mealy_nextstate==S0))
            begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=1;           //����
                charge_val<=4'b0101;       //4Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end 
     else if((mealy_state==S4)&&coin_putin&&coin_val&&(mealy_nextstate==S4)) //S4ʱͶ��10Ԫ
             begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0101;       //4Ԫ
                wrong_dis<=1;        //��ʾ����
                judge<=1;
                count<=0;
             end
     else if((mealy_state==S4)&&coin_putin&&(coin_val==0)&&(mealy_nextstate==S5))
             begin
                hold_ind<=1;             //����δ��ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0110;       //5Ԫ
                wrong_dis<=0;        //����ʾ����
                judge<=1;
                count<=0;
             end
     else if((mealy_state==S4)&&buy_confirm&&(mealy_nextstate==S4))
             begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0101;       //4Ԫ
                wrong_dis<=0;        //��ʾ����
                judge<=1;
                count<=0;
             end
     else if((mealy_state==S5)&&cancel_flag&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=1;           //����
                charge_val<=4'b0110;       //5Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end
      else if((mealy_state==S5)&&buy_confirm&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=1;          //ȡ����
                charge_ind<=1;           //����Ϊ0��
                charge_val<=4'b0000;       //0Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end
     else if((mealy_state==S5)&&coin_putin&&(mealy_nextstate==S5)) //��Ͷ��5Ԫ����Ͷ����
              begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b0110;       //5Ԫ
                wrong_dis<=1;        //��ʾ����
                judge<=1;
                count<=0;
             end       
     else if((mealy_state==S6)&&cancel_flag&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=1;           //����
                charge_val<=4'b1000;       //10Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end
     else if((mealy_state==S6)&&buy_confirm&&goods_choose&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=1;          //ȡ����
                charge_ind<=1;           //����
                charge_val<=4'b0110;       //5Ԫ    
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end
     else if((mealy_state==S6)&&buy_confirm&&(goods_choose==0)&&(mealy_nextstate==S0))
             begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=1;          //ȡ����
                charge_ind<=1;           //����
                charge_val<=4'b0111;       //7.5Ԫ
                wrong_dis<=0;        //����ʾ����
                if(count==0)count<=1;
                judge<=1;
             end         
     else if((mealy_state==S6)&&coin_putin&&(mealy_nextstate==S6))  //Ͷ��10Ԫ����Ͷ����
             begin
                hold_ind<=1;             //������ռ��
                drinktk_ind<=0;          //�޷�ȡ����
                charge_ind<=0;           //û������
                charge_val<=4'b1000;       //10Ԫ
                wrong_dis<=1;        //��ʾ����
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
          hold_ind<=0;             //����δ��ռ��
          drinktk_ind<=0;          //�޷�ȡ����
          charge_ind<=0;           //û������
          charge_val<=4'b1001;       //hello
          wrong_dis<=0;        //����ʾ����
          judge<=1;
          end 
     end
   else if((Reset==0)||(op_start==0))
       begin
       charge_val<=4'b1010;   //����ʾ
       end    
       if (Reset==0) mealy_state <= S0;
        else if(op_start==0)mealy_state<=S0;
        else mealy_state <= mealy_nextstate;
       if(Reset)machine_on<=1;//
        else machine_on<=0;//

 
//    always @(posedge ensure)
       
           case(mealy_state)
                S0:begin
                    if(cancel_flag)         //ȡ�������򷵻س�ʼ״̬
                        begin 
                        mealy_nextstate = S0;
                        end
                    else if(coin_putin)     //Ͷ�Һ��ж���Ǯ��ֵ
                        begin 
                            if (coin_val)           //Ͷ��10Ԫ������S6״̬
                            begin
                            mealy_nextstate = S6;       //����S6״̬
                            end
                            else  begin             //Ͷ��1Ԫ������S1״̬
                            mealy_nextstate = S1;       //����S1״̬
                            end
                        end
                    else if(buy_confirm)        //�޷��������Դ˲�����Ч�����ڴ�״̬ѭ��
                        begin
                        mealy_nextstate = S0;
                        end 
                    else begin
                        mealy_nextstate = S0;                        
                        end
                    end
                S1:begin  
                   if(cancel_flag)          //����1Ԫ��ȡ������������S7״̬
                       begin
                       mealy_nextstate = S0;    //�ص�S0״̬
                       end
                   else if(coin_putin)      //����Ͷ��
                       begin
                            if(coin_val)        // �����Ͷ��10Ԫ��״̬���䣬��ʾ����
                            begin
                            mealy_nextstate = S1;
                            end
                            else begin          // Ͷ��1Ԫ������S2״̬
                            mealy_nextstate = S2;
                            end
                       end
                  else if(buy_confirm)      //  ����ص������״̬���䣬��ʾ����
                       begin
                       mealy_nextstate = S1;
                       end
                  else begin
                       mealy_nextstate = S1;                        
                       end
                    end
                S2:begin
                   if(cancel_flag)          //����2Ԫ��ȡ������������S0״̬
                    begin
                    mealy_nextstate = S0;
                    end
                else if(coin_putin)         //����Ͷ��         
                      begin
                         if(coin_val)     //�����Ͷ��10Ԫ��״̬���䣬��ʾ����
                         begin
                         mealy_nextstate = S2;
                         end
                         else  begin             //Ͷ��1Ԫ������S3״̬
                         mealy_nextstate = S3 ;
                         end
                       end
               else if(buy_confirm)         //����ص������״̬���䣬��ʾ����
                    begin
                    mealy_nextstate = S2;
                    end
               else begin
                    mealy_nextstate = S2;       
                    end 
                 end 
               S3:begin
                   if(cancel_flag)      //����3Ԫ��ȡ������������S7״̬
                   begin
                   mealy_nextstate = S0;                    
                   end
                else if(buy_confirm)    //�������ť
                     begin
                         if (goods_choose==0)   //���ѡ�����2.5Ԫ��Ʒ�����Թ�����Ǯ����S7״̬
                         begin
                         mealy_nextstate = S0;   
                         end
                         else begin     //���ѡ�����5Ԫ��Ʒ�������Թ���״̬���䣬��ʾ����
                         mealy_nextstate = S3;                        
                         end                            
                     end
                  else if(coin_putin)   //����Ͷ��
                     begin 
                        if(goods_choose)            //ѡ��5Ԫ��Ʒ
                         begin 
                             if(coin_val)           //�����Ͷ��10Ԫ��״̬���䣬��ʾ����
                            begin
                            mealy_nextstate = S3;
                            end
                            else begin             //Ͷ��1Ԫ������S4״̬
                            mealy_nextstate = S4 ;                                       
                            end
                        end
                       else begin       //ѡ��2.5Ԫ����Ʒ����ҪͶ�ң�״̬���䣬��ʾ����
                        mealy_nextstate = S3;                            
                        end
                     end    
                  else begin
                     mealy_nextstate = S3;                      
                     end
                  end
                S4:begin
                   if(cancel_flag)          //����4Ԫ��ȡ������������S0״̬
                    begin
                    mealy_nextstate = S0;
                    end
                else if(coin_putin)         //����Ͷ��
                    begin
                         if(coin_val)           // �����Ͷ��ʮԪ��״̬���䣬��ʾ����
                         begin
                         mealy_nextstate = S4;
                         end
                         else begin             //Ͷ��1Ԫ������S5״̬
                         mealy_nextstate = S5;
                         end
                    end
               else if(buy_confirm)         //����ص������״̬���䣬��ʾ����
                    begin
                    mealy_nextstate =S4 ;
                    end
               else begin
                    mealy_nextstate = S4;    
                    end
                 end 
                S5:begin
                    if(cancel_flag)        //����5Ԫ��ȡ������������S7״̬
                    begin
                    mealy_nextstate = S0;                   
                    end
                  else if(buy_confirm)      //������򣬷���S0״̬
                    begin
                    mealy_nextstate = S0;                   
                    end
                 else if(coin_putin)     //����ص��Ͷ�Ұ�ť��״̬���䣬��ʾ����
                    begin
                    mealy_nextstate = S5;
                    end
                 else begin
                    mealy_nextstate = S5;                 
                    end
                 end
                S6:begin
                    if(cancel_flag)     //����10Ԫ�����ȡ��������ť����Ǯ������S0״̬
                    begin
                    mealy_nextstate = S0;                   
                    end 
                 else if(buy_confirm)
                    begin
                        if(goods_choose)        //����5Ԫ��Ʒ�����㣬����S7״̬
                        begin
                        mealy_nextstate = S0;                  
                        end
                        else begin              //����2.5Ԫ��Ʒ�����㣬����S7״̬
                        mealy_nextstate = S0;                  
                        end
                    end
                 else if(coin_putin)      //����ص��Ͷ�Ұ�ť��״̬���䣬��ʾ����
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
