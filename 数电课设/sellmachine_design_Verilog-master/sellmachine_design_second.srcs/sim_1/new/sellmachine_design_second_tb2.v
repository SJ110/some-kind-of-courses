module sellmachine_design_second_tb2;
reg Reset,clk,op_start,coin_val,coin_putin,cancel_flag,buy_confirm,goods_choose,ensure;
wire hold_ind,drinktk_ind,charge_ind,machine_on,wrong_dis;
wire [7:0] light,light_part;

sellmachine_design_second test(Reset,clk,op_start,coin_val,coin_putin,cancel_flag,buy_confirm,goods_choose,ensure,hold_ind,drinktk_ind,charge_ind,machine_on,wrong_dis,light,light_part);

initial fork
Reset=0;
clk=0;
op_start=0;
coin_val=1;     //10Ԫ
coin_putin=1;
cancel_flag=0;
buy_confirm=0;
goods_choose=0;
ensure=0;
#2 Reset=1;
#3 op_start=1;
#4  coin_putin=1;
#5 ensure=1;
#6 ensure=0;
#7 coin_putin=0;
#8 buy_confirm=1;
#9 ensure=1;
#10 ensure=0;

#16 $finish;
join
always #0.5 clk=~clk;
endmodule