// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Mon Oct 15 11:10:08 2018
// Host        : LAPTOP-26490T87 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/lenovo/Desktop/sellmachine_design_Verilog-master/sellmachine_design_second.sim/sim_1/synth/timing/sellmachine_design_second_tb_time_synth.v
// Design      : sellmachine_design_second
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module change_HZ
   (clk_use,
    clk);
  output clk_use;
  input clk;

  wire clear;
  wire clk;
  wire clk_change_i_1_n_0;
  wire clk_use;
  wire \counter[0]_i_3__0_n_0 ;
  wire \counter[0]_i_4__0_n_0 ;
  wire \counter[0]_i_5__0_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[0]_i_9_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [21:1]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire [3:1]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[20]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    clk_change_i_1
       (.I0(clear),
        .I1(clk_use),
        .O(clk_change_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_change_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_change_i_1_n_0),
        .Q(clk_use),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFCFEFC)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg[2]),
        .I1(\counter[0]_i_3__0_n_0 ),
        .I2(\counter[0]_i_4__0_n_0 ),
        .I3(counter_reg[3]),
        .I4(counter_reg[1]),
        .I5(\counter[0]_i_5__0_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[0]_i_3__0 
       (.I0(counter_reg[7]),
        .I1(counter_reg[10]),
        .I2(counter_reg[18]),
        .I3(counter_reg[13]),
        .I4(counter_reg[16]),
        .I5(counter_reg[17]),
        .O(\counter[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[0]_i_4__0 
       (.I0(counter_reg[20]),
        .I1(counter_reg[14]),
        .I2(counter_reg[15]),
        .I3(counter_reg[19]),
        .I4(counter_reg[21]),
        .I5(counter_reg[8]),
        .O(\counter[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[0]_i_5__0 
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(counter_reg[12]),
        .I3(counter_reg[9]),
        .I4(counter_reg[4]),
        .I5(counter_reg[11]),
        .O(\counter[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_6 
       (.I0(counter_reg[3]),
        .O(\counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_7 
       (.I0(counter_reg[2]),
        .O(\counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_8 
       (.I0(counter_reg[1]),
        .O(\counter[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_9 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .O(\counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .O(\counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .O(\counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .O(\counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .O(\counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .O(\counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .O(\counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .O(\counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[21]),
        .O(\counter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[20]),
        .O(\counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .O(\counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .O(\counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 ,\counter[0]_i_8_n_0 ,\counter[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(clear));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [3:1],\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[20]_i_1_O_UNCONNECTED [3:2],\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clear));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
endmodule

module light_main
   (light_OBUF,
    Q,
    clk_use_BUFG,
    \genblk1.charge_val_reg[3] );
  output [4:0]light_OBUF;
  output [7:0]Q;
  input clk_use_BUFG;
  input [3:0]\genblk1.charge_val_reg[3] ;

  wire [7:0]Q;
  wire clk_use_BUFG;
  wire [4:0]counter;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[1]_i_2_n_0 ;
  wire \counter[2]_i_2_n_0 ;
  wire \counter[2]_i_3_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire [3:0]\genblk1.charge_val_reg[3] ;
  wire \light[1]_i_1_n_0 ;
  wire \light[2]_i_1_n_0 ;
  wire \light[3]_i_1_n_0 ;
  wire \light[4]_i_1_n_0 ;
  wire [4:0]light_OBUF;
  wire [4:0]p_0_out;
  wire [1:0]p_1_in;

  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \counter[0]_i_1 
       (.I0(\genblk1.charge_val_reg[3] [1]),
        .I1(\counter[0]_i_2_n_0 ),
        .I2(\genblk1.charge_val_reg[3] [3]),
        .I3(\counter[0]_i_3_n_0 ),
        .I4(\genblk1.charge_val_reg[3] [2]),
        .I5(\counter[0]_i_4_n_0 ),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hAAAAAAABA8A8AAAA)) 
    \counter[0]_i_2 
       (.I0(\genblk1.charge_val_reg[3] [0]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[4]),
        .O(\counter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \counter[0]_i_3 
       (.I0(counter[4]),
        .I1(counter[0]),
        .I2(\counter[0]_i_5_n_0 ),
        .I3(counter[3]),
        .I4(\genblk1.charge_val_reg[3] [1]),
        .I5(\genblk1.charge_val_reg[3] [0]),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55555545AAAAAAAA)) 
    \counter[0]_i_4 
       (.I0(\genblk1.charge_val_reg[3] [1]),
        .I1(counter[4]),
        .I2(counter[0]),
        .I3(\counter[0]_i_5_n_0 ),
        .I4(counter[3]),
        .I5(\genblk1.charge_val_reg[3] [0]),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[0]_i_5 
       (.I0(counter[1]),
        .I1(counter[2]),
        .O(\counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h33000B3B33000838)) 
    \counter[1]_i_1 
       (.I0(\counter[1]_i_2_n_0 ),
        .I1(\genblk1.charge_val_reg[3] [3]),
        .I2(\genblk1.charge_val_reg[3] [2]),
        .I3(\genblk1.charge_val_reg[3] [0]),
        .I4(\genblk1.charge_val_reg[3] [1]),
        .I5(\counter[2]_i_3_n_0 ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'h0000011000000000)) 
    \counter[1]_i_2 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .I5(\genblk1.charge_val_reg[3] [0]),
        .O(\counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3300330030BB3088)) 
    \counter[2]_i_1 
       (.I0(\counter[2]_i_2_n_0 ),
        .I1(\genblk1.charge_val_reg[3] [3]),
        .I2(\genblk1.charge_val_reg[3] [0]),
        .I3(\genblk1.charge_val_reg[3] [2]),
        .I4(\counter[2]_i_3_n_0 ),
        .I5(\genblk1.charge_val_reg[3] [1]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h0000041000000000)) 
    \counter[2]_i_2 
       (.I0(counter[4]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[3]),
        .I5(\genblk1.charge_val_reg[3] [0]),
        .O(\counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \counter[2]_i_3 
       (.I0(counter[4]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(\genblk1.charge_val_reg[3] [0]),
        .O(\counter[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter[3]_i_1 
       (.I0(\genblk1.charge_val_reg[3] [2]),
        .I1(\counter[3]_i_2_n_0 ),
        .I2(\genblk1.charge_val_reg[3] [1]),
        .I3(\genblk1.charge_val_reg[3] [3]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \counter[3]_i_2 
       (.I0(counter[4]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[3]),
        .I5(\genblk1.charge_val_reg[3] [0]),
        .O(\counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[4]_i_1 
       (.I0(\genblk1.charge_val_reg[3] [2]),
        .I1(\genblk1.charge_val_reg[3] [0]),
        .I2(\genblk1.charge_val_reg[3] [1]),
        .I3(\genblk1.charge_val_reg[3] [3]),
        .O(p_0_out[4]));
  FDRE #(
    .INIT(1'b1)) 
    \counter_reg[0] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(counter[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001121B)) 
    g0_b0
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000A11D)) 
    g0_b1
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000041D)) 
    g0_b2
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00015203)) 
    g0_b3
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0001FB01)) 
    g0_b4
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00014E01)) 
    g0_b5
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF42F9)) 
    g0_b6
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(g0_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFBF7F)) 
    g0_b7
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(g0_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h14011113)) 
    \light[0]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'h01FF)) 
    \light[1]_i_1 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[4]),
        .O(\light[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEBFEFFFD)) 
    \light[1]_i_2 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAFFFFFF3FF)) 
    \light[2]_i_1 
       (.I0(light_OBUF[2]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(counter[4]),
        .O(\light[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAFFFFFFCFF)) 
    \light[3]_i_1 
       (.I0(light_OBUF[3]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(counter[4]),
        .O(\light[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAFFFFFFFF3)) 
    \light[4]_i_1 
       (.I0(light_OBUF[4]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(counter[4]),
        .O(\light[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \light_part_reg[0] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(g0_b0_n_0),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_part_reg[1] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(g0_b1_n_0),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_part_reg[2] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(g0_b2_n_0),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_part_reg[3] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(g0_b3_n_0),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_part_reg[4] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(g0_b4_n_0),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_part_reg[5] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(g0_b5_n_0),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_part_reg[6] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(g0_b6_n_0),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_part_reg[7] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(g0_b7_n_0),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_reg[0] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(light_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_reg[1] 
       (.C(clk_use_BUFG),
        .CE(\light[1]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(light_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_reg[2] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\light[2]_i_1_n_0 ),
        .Q(light_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_reg[3] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\light[3]_i_1_n_0 ),
        .Q(light_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \light_reg[4] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\light[4]_i_1_n_0 ),
        .Q(light_OBUF[4]),
        .R(1'b0));
endmodule

module light_press
   (light_OBUF,
    Q,
    clk_use_BUFG,
    \genblk1.charge_val_reg[3] );
  output [4:0]light_OBUF;
  output [7:0]Q;
  input clk_use_BUFG;
  input [3:0]\genblk1.charge_val_reg[3] ;

  wire [7:0]Q;
  wire clk_use_BUFG;
  wire [3:0]\genblk1.charge_val_reg[3] ;
  wire [4:0]light_OBUF;

  light_main display
       (.Q(Q),
        .clk_use_BUFG(clk_use_BUFG),
        .\genblk1.charge_val_reg[3] (\genblk1.charge_val_reg[3] ),
        .light_OBUF(light_OBUF));
endmodule

(* S0 = "0" *) (* S1 = "1" *) (* S2 = "2" *) 
(* S3 = "3" *) (* S4 = "4" *) (* S5 = "5" *) 
(* S6 = "6" *) 
(* NotValidForBitStream *)
module sellmachine_design_second
   (Reset,
    clk,
    op_start,
    coin_val,
    coin_putin,
    cancel_flag,
    buy_confirm,
    goods_choose,
    ensure,
    hold_ind,
    drinktk_ind,
    charge_ind,
    machine_on,
    wrong_dis,
    light,
    light_part);
  input Reset;
  input clk;
  input op_start;
  input coin_val;
  input coin_putin;
  input cancel_flag;
  input buy_confirm;
  input goods_choose;
  input ensure;
  output hold_ind;
  output drinktk_ind;
  output charge_ind;
  output machine_on;
  output wrong_dis;
  output [7:0]light;
  output [7:0]light_part;

  wire \FSM_sequential_genblk1.mealy_nextstate[0]_i_1_n_0 ;
  wire \FSM_sequential_genblk1.mealy_nextstate[0]_i_2_n_0 ;
  wire \FSM_sequential_genblk1.mealy_nextstate[0]_i_3_n_0 ;
  wire \FSM_sequential_genblk1.mealy_nextstate[1]_i_1_n_0 ;
  wire \FSM_sequential_genblk1.mealy_nextstate[1]_i_2_n_0 ;
  wire \FSM_sequential_genblk1.mealy_nextstate[2]_i_1_n_0 ;
  wire \FSM_sequential_genblk1.mealy_nextstate[2]_i_2_n_0 ;
  wire \FSM_sequential_genblk1.mealy_nextstate[2]_i_3_n_0 ;
  wire \FSM_sequential_genblk1.mealy_nextstate[2]_i_4_n_0 ;
  wire \FSM_sequential_genblk1.mealy_state[0]_i_1_n_0 ;
  wire \FSM_sequential_genblk1.mealy_state[1]_i_1_n_0 ;
  wire \FSM_sequential_genblk1.mealy_state[2]_i_1_n_0 ;
  wire Reset;
  wire Reset_IBUF;
  wire buy_confirm;
  wire buy_confirm_IBUF;
  wire cancel_flag;
  wire cancel_flag_IBUF;
  wire charge_ind;
  wire charge_ind_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_use;
  wire clk_use_BUFG;
  wire coin_putin;
  wire coin_putin_IBUF;
  wire coin_val;
  wire coin_val_IBUF;
  wire drinktk_ind;
  wire drinktk_ind_OBUF;
  wire ensure;
  wire ensure_IBUF;
  wire ensure_IBUF_BUFG;
  wire \genblk1.charge_ind_i_10_n_0 ;
  wire \genblk1.charge_ind_i_11_n_0 ;
  wire \genblk1.charge_ind_i_12_n_0 ;
  wire \genblk1.charge_ind_i_13_n_0 ;
  wire \genblk1.charge_ind_i_14_n_0 ;
  wire \genblk1.charge_ind_i_15_n_0 ;
  wire \genblk1.charge_ind_i_16_n_0 ;
  wire \genblk1.charge_ind_i_17_n_0 ;
  wire \genblk1.charge_ind_i_18_n_0 ;
  wire \genblk1.charge_ind_i_19_n_0 ;
  wire \genblk1.charge_ind_i_1_n_0 ;
  wire \genblk1.charge_ind_i_20_n_0 ;
  wire \genblk1.charge_ind_i_21_n_0 ;
  wire \genblk1.charge_ind_i_2_n_0 ;
  wire \genblk1.charge_ind_i_3_n_0 ;
  wire \genblk1.charge_ind_i_4_n_0 ;
  wire \genblk1.charge_ind_i_5_n_0 ;
  wire \genblk1.charge_ind_i_6_n_0 ;
  wire \genblk1.charge_ind_i_7_n_0 ;
  wire \genblk1.charge_ind_i_8_n_0 ;
  wire \genblk1.charge_ind_i_9_n_0 ;
  wire \genblk1.charge_val[0]_i_1_n_0 ;
  wire \genblk1.charge_val[0]_i_2_n_0 ;
  wire \genblk1.charge_val[0]_i_3_n_0 ;
  wire \genblk1.charge_val[0]_i_4_n_0 ;
  wire \genblk1.charge_val[0]_i_5_n_0 ;
  wire \genblk1.charge_val[0]_i_6_n_0 ;
  wire \genblk1.charge_val[0]_i_7_n_0 ;
  wire \genblk1.charge_val[1]_i_1_n_0 ;
  wire \genblk1.charge_val[1]_i_2_n_0 ;
  wire \genblk1.charge_val[1]_i_3_n_0 ;
  wire \genblk1.charge_val[1]_i_4_n_0 ;
  wire \genblk1.charge_val[2]_i_1_n_0 ;
  wire \genblk1.charge_val[2]_i_2_n_0 ;
  wire \genblk1.charge_val[2]_i_3_n_0 ;
  wire \genblk1.charge_val[2]_i_4_n_0 ;
  wire \genblk1.charge_val[2]_i_5_n_0 ;
  wire \genblk1.charge_val[2]_i_6_n_0 ;
  wire \genblk1.charge_val[3]_i_10_n_0 ;
  wire \genblk1.charge_val[3]_i_11_n_0 ;
  wire \genblk1.charge_val[3]_i_12_n_0 ;
  wire \genblk1.charge_val[3]_i_13_n_0 ;
  wire \genblk1.charge_val[3]_i_14_n_0 ;
  wire \genblk1.charge_val[3]_i_15_n_0 ;
  wire \genblk1.charge_val[3]_i_16_n_0 ;
  wire \genblk1.charge_val[3]_i_17_n_0 ;
  wire \genblk1.charge_val[3]_i_18_n_0 ;
  wire \genblk1.charge_val[3]_i_19_n_0 ;
  wire \genblk1.charge_val[3]_i_1_n_0 ;
  wire \genblk1.charge_val[3]_i_20_n_0 ;
  wire \genblk1.charge_val[3]_i_21_n_0 ;
  wire \genblk1.charge_val[3]_i_2_n_0 ;
  wire \genblk1.charge_val[3]_i_3_n_0 ;
  wire \genblk1.charge_val[3]_i_4_n_0 ;
  wire \genblk1.charge_val[3]_i_5_n_0 ;
  wire \genblk1.charge_val[3]_i_6_n_0 ;
  wire \genblk1.charge_val[3]_i_7_n_0 ;
  wire \genblk1.charge_val[3]_i_8_n_0 ;
  wire \genblk1.charge_val[3]_i_9_n_0 ;
  wire \genblk1.charge_val_reg_n_0_[0] ;
  wire \genblk1.charge_val_reg_n_0_[1] ;
  wire \genblk1.charge_val_reg_n_0_[2] ;
  wire \genblk1.charge_val_reg_n_0_[3] ;
  wire \genblk1.count[0]_i_10_n_0 ;
  wire \genblk1.count[0]_i_11_n_0 ;
  wire \genblk1.count[0]_i_12_n_0 ;
  wire \genblk1.count[0]_i_13_n_0 ;
  wire \genblk1.count[0]_i_14_n_0 ;
  wire \genblk1.count[0]_i_15_n_0 ;
  wire \genblk1.count[0]_i_16_n_0 ;
  wire \genblk1.count[0]_i_17_n_0 ;
  wire \genblk1.count[0]_i_18_n_0 ;
  wire \genblk1.count[0]_i_19_n_0 ;
  wire \genblk1.count[0]_i_20_n_0 ;
  wire \genblk1.count[0]_i_21_n_0 ;
  wire \genblk1.count[0]_i_22_n_0 ;
  wire \genblk1.count[0]_i_23_n_0 ;
  wire \genblk1.count[0]_i_24_n_0 ;
  wire \genblk1.count[0]_i_25_n_0 ;
  wire \genblk1.count[0]_i_26_n_0 ;
  wire \genblk1.count[0]_i_27_n_0 ;
  wire \genblk1.count[0]_i_28_n_0 ;
  wire \genblk1.count[0]_i_29_n_0 ;
  wire \genblk1.count[0]_i_30_n_0 ;
  wire \genblk1.count[0]_i_31_n_0 ;
  wire \genblk1.count[0]_i_32_n_0 ;
  wire \genblk1.count[0]_i_33_n_0 ;
  wire \genblk1.count[0]_i_34_n_0 ;
  wire \genblk1.count[0]_i_35_n_0 ;
  wire \genblk1.count[0]_i_36_n_0 ;
  wire \genblk1.count[0]_i_3_n_0 ;
  wire \genblk1.count[0]_i_4_n_0 ;
  wire \genblk1.count[0]_i_5_n_0 ;
  wire \genblk1.count[0]_i_6_n_0 ;
  wire \genblk1.count[0]_i_7_n_0 ;
  wire \genblk1.count[0]_i_8_n_0 ;
  wire \genblk1.count[0]_i_9_n_0 ;
  wire \genblk1.count[12]_i_2_n_0 ;
  wire \genblk1.count[12]_i_3_n_0 ;
  wire \genblk1.count[12]_i_4_n_0 ;
  wire \genblk1.count[12]_i_5_n_0 ;
  wire \genblk1.count[12]_i_6_n_0 ;
  wire \genblk1.count[16]_i_2_n_0 ;
  wire \genblk1.count[16]_i_3_n_0 ;
  wire \genblk1.count[16]_i_4_n_0 ;
  wire \genblk1.count[16]_i_5_n_0 ;
  wire \genblk1.count[20]_i_2_n_0 ;
  wire \genblk1.count[4]_i_2_n_0 ;
  wire \genblk1.count[4]_i_3_n_0 ;
  wire \genblk1.count[4]_i_4_n_0 ;
  wire \genblk1.count[4]_i_5_n_0 ;
  wire \genblk1.count[4]_i_6_n_0 ;
  wire \genblk1.count[8]_i_2_n_0 ;
  wire \genblk1.count[8]_i_3_n_0 ;
  wire \genblk1.count[8]_i_4_n_0 ;
  wire \genblk1.count[8]_i_5_n_0 ;
  wire \genblk1.count[8]_i_6_n_0 ;
  wire [20:0]\genblk1.count_reg ;
  wire \genblk1.count_reg[0]_i_1_n_0 ;
  wire \genblk1.count_reg[0]_i_1_n_1 ;
  wire \genblk1.count_reg[0]_i_1_n_2 ;
  wire \genblk1.count_reg[0]_i_1_n_3 ;
  wire \genblk1.count_reg[0]_i_1_n_4 ;
  wire \genblk1.count_reg[0]_i_1_n_5 ;
  wire \genblk1.count_reg[0]_i_1_n_6 ;
  wire \genblk1.count_reg[0]_i_1_n_7 ;
  wire \genblk1.count_reg[12]_i_1_n_0 ;
  wire \genblk1.count_reg[12]_i_1_n_1 ;
  wire \genblk1.count_reg[12]_i_1_n_2 ;
  wire \genblk1.count_reg[12]_i_1_n_3 ;
  wire \genblk1.count_reg[12]_i_1_n_4 ;
  wire \genblk1.count_reg[12]_i_1_n_5 ;
  wire \genblk1.count_reg[12]_i_1_n_6 ;
  wire \genblk1.count_reg[12]_i_1_n_7 ;
  wire \genblk1.count_reg[16]_i_1_n_0 ;
  wire \genblk1.count_reg[16]_i_1_n_1 ;
  wire \genblk1.count_reg[16]_i_1_n_2 ;
  wire \genblk1.count_reg[16]_i_1_n_3 ;
  wire \genblk1.count_reg[16]_i_1_n_4 ;
  wire \genblk1.count_reg[16]_i_1_n_5 ;
  wire \genblk1.count_reg[16]_i_1_n_6 ;
  wire \genblk1.count_reg[16]_i_1_n_7 ;
  wire \genblk1.count_reg[20]_i_1_n_7 ;
  wire \genblk1.count_reg[4]_i_1_n_0 ;
  wire \genblk1.count_reg[4]_i_1_n_1 ;
  wire \genblk1.count_reg[4]_i_1_n_2 ;
  wire \genblk1.count_reg[4]_i_1_n_3 ;
  wire \genblk1.count_reg[4]_i_1_n_4 ;
  wire \genblk1.count_reg[4]_i_1_n_5 ;
  wire \genblk1.count_reg[4]_i_1_n_6 ;
  wire \genblk1.count_reg[4]_i_1_n_7 ;
  wire \genblk1.count_reg[8]_i_1_n_0 ;
  wire \genblk1.count_reg[8]_i_1_n_1 ;
  wire \genblk1.count_reg[8]_i_1_n_2 ;
  wire \genblk1.count_reg[8]_i_1_n_3 ;
  wire \genblk1.count_reg[8]_i_1_n_4 ;
  wire \genblk1.count_reg[8]_i_1_n_5 ;
  wire \genblk1.count_reg[8]_i_1_n_6 ;
  wire \genblk1.count_reg[8]_i_1_n_7 ;
  wire \genblk1.drinktk_ind_i_10_n_0 ;
  wire \genblk1.drinktk_ind_i_11_n_0 ;
  wire \genblk1.drinktk_ind_i_12_n_0 ;
  wire \genblk1.drinktk_ind_i_13_n_0 ;
  wire \genblk1.drinktk_ind_i_14_n_0 ;
  wire \genblk1.drinktk_ind_i_15_n_0 ;
  wire \genblk1.drinktk_ind_i_16_n_0 ;
  wire \genblk1.drinktk_ind_i_17_n_0 ;
  wire \genblk1.drinktk_ind_i_18_n_0 ;
  wire \genblk1.drinktk_ind_i_19_n_0 ;
  wire \genblk1.drinktk_ind_i_1_n_0 ;
  wire \genblk1.drinktk_ind_i_20_n_0 ;
  wire \genblk1.drinktk_ind_i_22_n_0 ;
  wire \genblk1.drinktk_ind_i_23_n_0 ;
  wire \genblk1.drinktk_ind_i_24_n_0 ;
  wire \genblk1.drinktk_ind_i_25_n_0 ;
  wire \genblk1.drinktk_ind_i_2_n_0 ;
  wire \genblk1.drinktk_ind_i_3_n_0 ;
  wire \genblk1.drinktk_ind_i_4_n_0 ;
  wire \genblk1.drinktk_ind_i_5_n_0 ;
  wire \genblk1.drinktk_ind_i_6_n_0 ;
  wire \genblk1.drinktk_ind_i_7_n_0 ;
  wire \genblk1.drinktk_ind_i_8_n_0 ;
  wire \genblk1.drinktk_ind_i_9_n_0 ;
  wire \genblk1.hold_ind_i_10_n_0 ;
  wire \genblk1.hold_ind_i_11_n_0 ;
  wire \genblk1.hold_ind_i_12_n_0 ;
  wire \genblk1.hold_ind_i_13_n_0 ;
  wire \genblk1.hold_ind_i_14_n_0 ;
  wire \genblk1.hold_ind_i_15_n_0 ;
  wire \genblk1.hold_ind_i_16_n_0 ;
  wire \genblk1.hold_ind_i_17_n_0 ;
  wire \genblk1.hold_ind_i_18_n_0 ;
  wire \genblk1.hold_ind_i_19_n_0 ;
  wire \genblk1.hold_ind_i_1_n_0 ;
  wire \genblk1.hold_ind_i_20_n_0 ;
  wire \genblk1.hold_ind_i_21_n_0 ;
  wire \genblk1.hold_ind_i_22_n_0 ;
  wire \genblk1.hold_ind_i_23_n_0 ;
  wire \genblk1.hold_ind_i_2_n_0 ;
  wire \genblk1.hold_ind_i_3_n_0 ;
  wire \genblk1.hold_ind_i_4_n_0 ;
  wire \genblk1.hold_ind_i_5_n_0 ;
  wire \genblk1.hold_ind_i_6_n_0 ;
  wire \genblk1.hold_ind_i_7_n_0 ;
  wire \genblk1.hold_ind_i_8_n_0 ;
  wire \genblk1.hold_ind_i_9_n_0 ;
  wire \genblk1.judge_i_1_n_0 ;
  wire \genblk1.judge_i_2_n_0 ;
  wire \genblk1.judge_i_3_n_0 ;
  wire \genblk1.judge_reg_n_0 ;
  wire \genblk1.wrong_dis_i_10_n_0 ;
  wire \genblk1.wrong_dis_i_11_n_0 ;
  wire \genblk1.wrong_dis_i_12_n_0 ;
  wire \genblk1.wrong_dis_i_13_n_0 ;
  wire \genblk1.wrong_dis_i_14_n_0 ;
  wire \genblk1.wrong_dis_i_15_n_0 ;
  wire \genblk1.wrong_dis_i_16_n_0 ;
  wire \genblk1.wrong_dis_i_17_n_0 ;
  wire \genblk1.wrong_dis_i_18_n_0 ;
  wire \genblk1.wrong_dis_i_1_n_0 ;
  wire \genblk1.wrong_dis_i_2_n_0 ;
  wire \genblk1.wrong_dis_i_3_n_0 ;
  wire \genblk1.wrong_dis_i_4_n_0 ;
  wire \genblk1.wrong_dis_i_5_n_0 ;
  wire \genblk1.wrong_dis_i_6_n_0 ;
  wire \genblk1.wrong_dis_i_7_n_0 ;
  wire \genblk1.wrong_dis_i_8_n_0 ;
  wire \genblk1.wrong_dis_i_9_n_0 ;
  wire goods_choose;
  wire goods_choose_IBUF;
  wire hold_ind;
  wire hold_ind_OBUF;
  wire [7:0]light;
  wire [4:0]light_OBUF;
  wire [7:0]light_part;
  wire [7:0]light_part_OBUF;
  wire machine_on;
  wire machine_on_OBUF;
  wire [2:0]mealy_nextstate;
  (* RTL_KEEP = "yes" *) wire [2:0]mealy_state;
  wire op_start;
  wire op_start_IBUF;
  wire p_0_in70_in;
  wire p_0_in86_in;
  wire p_60_out;
  wire wrong_dis;
  wire wrong_dis_OBUF;
  wire [3:0]\NLW_genblk1.count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_genblk1.count_reg[20]_i_1_O_UNCONNECTED ;

initial begin
 $sdf_annotate("sellmachine_design_second_tb_time_synth.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \FSM_sequential_genblk1.mealy_nextstate[0]_i_1 
       (.I0(\FSM_sequential_genblk1.mealy_nextstate[0]_i_2_n_0 ),
        .I1(mealy_state[1]),
        .I2(mealy_state[0]),
        .I3(mealy_state[2]),
        .I4(mealy_nextstate[0]),
        .O(\FSM_sequential_genblk1.mealy_nextstate[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000909000000FF)) 
    \FSM_sequential_genblk1.mealy_nextstate[0]_i_2 
       (.I0(mealy_state[0]),
        .I1(\FSM_sequential_genblk1.mealy_nextstate[2]_i_3_n_0 ),
        .I2(mealy_state[2]),
        .I3(\FSM_sequential_genblk1.mealy_nextstate[0]_i_3_n_0 ),
        .I4(cancel_flag_IBUF),
        .I5(mealy_state[1]),
        .O(\FSM_sequential_genblk1.mealy_nextstate[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h50FFFF5F50BF005F)) 
    \FSM_sequential_genblk1.mealy_nextstate[0]_i_3 
       (.I0(coin_val_IBUF),
        .I1(goods_choose_IBUF),
        .I2(coin_putin_IBUF),
        .I3(mealy_state[0]),
        .I4(mealy_state[2]),
        .I5(buy_confirm_IBUF),
        .O(\FSM_sequential_genblk1.mealy_nextstate[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \FSM_sequential_genblk1.mealy_nextstate[1]_i_1 
       (.I0(\FSM_sequential_genblk1.mealy_nextstate[1]_i_2_n_0 ),
        .I1(mealy_state[1]),
        .I2(mealy_state[0]),
        .I3(mealy_state[2]),
        .I4(mealy_nextstate[1]),
        .O(\FSM_sequential_genblk1.mealy_nextstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011F30C03)) 
    \FSM_sequential_genblk1.mealy_nextstate[1]_i_2 
       (.I0(buy_confirm_IBUF),
        .I1(mealy_state[0]),
        .I2(\FSM_sequential_genblk1.mealy_nextstate[2]_i_3_n_0 ),
        .I3(mealy_state[2]),
        .I4(mealy_state[1]),
        .I5(cancel_flag_IBUF),
        .O(\FSM_sequential_genblk1.mealy_nextstate[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAABAA00AAAB)) 
    \FSM_sequential_genblk1.mealy_nextstate[2]_i_1 
       (.I0(\FSM_sequential_genblk1.mealy_nextstate[2]_i_2_n_0 ),
        .I1(\FSM_sequential_genblk1.mealy_nextstate[2]_i_3_n_0 ),
        .I2(cancel_flag_IBUF),
        .I3(\FSM_sequential_genblk1.mealy_nextstate[2]_i_4_n_0 ),
        .I4(mealy_state[2]),
        .I5(mealy_nextstate[2]),
        .O(\FSM_sequential_genblk1.mealy_nextstate[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040444404444)) 
    \FSM_sequential_genblk1.mealy_nextstate[2]_i_2 
       (.I0(cancel_flag_IBUF),
        .I1(mealy_state[2]),
        .I2(mealy_state[0]),
        .I3(goods_choose_IBUF),
        .I4(buy_confirm_IBUF),
        .I5(mealy_state[1]),
        .O(\FSM_sequential_genblk1.mealy_nextstate[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_genblk1.mealy_nextstate[2]_i_3 
       (.I0(coin_val_IBUF),
        .I1(coin_putin_IBUF),
        .O(\FSM_sequential_genblk1.mealy_nextstate[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_genblk1.mealy_nextstate[2]_i_4 
       (.I0(mealy_state[0]),
        .I1(mealy_state[1]),
        .O(\FSM_sequential_genblk1.mealy_nextstate[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_genblk1.mealy_nextstate_reg[0] 
       (.C(ensure_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_genblk1.mealy_nextstate[0]_i_1_n_0 ),
        .Q(mealy_nextstate[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_genblk1.mealy_nextstate_reg[1] 
       (.C(ensure_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_genblk1.mealy_nextstate[1]_i_1_n_0 ),
        .Q(mealy_nextstate[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_genblk1.mealy_nextstate_reg[2] 
       (.C(ensure_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_genblk1.mealy_nextstate[2]_i_1_n_0 ),
        .Q(mealy_nextstate[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_genblk1.mealy_state[0]_i_1 
       (.I0(mealy_nextstate[0]),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .O(\FSM_sequential_genblk1.mealy_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_genblk1.mealy_state[1]_i_1 
       (.I0(mealy_nextstate[1]),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .O(\FSM_sequential_genblk1.mealy_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_genblk1.mealy_state[2]_i_1 
       (.I0(mealy_nextstate[2]),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .O(\FSM_sequential_genblk1.mealy_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_genblk1.mealy_state_reg[0] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_genblk1.mealy_state[0]_i_1_n_0 ),
        .Q(mealy_state[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_genblk1.mealy_state_reg[1] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_genblk1.mealy_state[1]_i_1_n_0 ),
        .Q(mealy_state[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_genblk1.mealy_state_reg[2] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_genblk1.mealy_state[2]_i_1_n_0 ),
        .Q(mealy_state[2]),
        .R(1'b0));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  IBUF buy_confirm_IBUF_inst
       (.I(buy_confirm),
        .O(buy_confirm_IBUF));
  IBUF cancel_flag_IBUF_inst
       (.I(cancel_flag),
        .O(cancel_flag_IBUF));
  OBUF charge_ind_OBUF_inst
       (.I(charge_ind_OBUF),
        .O(charge_ind));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  BUFG clk_use_BUFG_inst
       (.I(clk_use),
        .O(clk_use_BUFG));
  IBUF coin_putin_IBUF_inst
       (.I(coin_putin),
        .O(coin_putin_IBUF));
  IBUF coin_val_IBUF_inst
       (.I(coin_val),
        .O(coin_val_IBUF));
  light_press display
       (.Q(light_part_OBUF),
        .clk_use_BUFG(clk_use_BUFG),
        .\genblk1.charge_val_reg[3] ({\genblk1.charge_val_reg_n_0_[3] ,\genblk1.charge_val_reg_n_0_[2] ,\genblk1.charge_val_reg_n_0_[1] ,\genblk1.charge_val_reg_n_0_[0] }),
        .light_OBUF(light_OBUF));
  OBUF drinktk_ind_OBUF_inst
       (.I(drinktk_ind_OBUF),
        .O(drinktk_ind));
  BUFG ensure_IBUF_BUFG_inst
       (.I(ensure_IBUF),
        .O(ensure_IBUF_BUFG));
  IBUF ensure_IBUF_inst
       (.I(ensure),
        .O(ensure_IBUF));
  LUT3 #(
    .INIT(8'h04)) 
    \genblk1.charge_ind_i_1 
       (.I0(\genblk1.drinktk_ind_i_4_n_0 ),
        .I1(\genblk1.charge_ind_i_2_n_0 ),
        .I2(\genblk1.drinktk_ind_i_7_n_0 ),
        .O(\genblk1.charge_ind_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h34043C0C)) 
    \genblk1.charge_ind_i_10 
       (.I0(\genblk1.charge_ind_i_16_n_0 ),
        .I1(mealy_nextstate[1]),
        .I2(mealy_nextstate[2]),
        .I3(\genblk1.charge_ind_i_17_n_0 ),
        .I4(\genblk1.charge_val[3]_i_12_n_0 ),
        .O(\genblk1.charge_ind_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF755F7F700000000)) 
    \genblk1.charge_ind_i_11 
       (.I0(\genblk1.charge_ind_i_18_n_0 ),
        .I1(\genblk1.charge_ind_i_15_n_0 ),
        .I2(\genblk1.charge_ind_i_19_n_0 ),
        .I3(\genblk1.charge_ind_i_20_n_0 ),
        .I4(\genblk1.charge_ind_i_21_n_0 ),
        .I5(\genblk1.drinktk_ind_i_20_n_0 ),
        .O(\genblk1.charge_ind_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \genblk1.charge_ind_i_12 
       (.I0(buy_confirm_IBUF),
        .I1(mealy_nextstate[0]),
        .I2(mealy_nextstate[1]),
        .I3(mealy_nextstate[2]),
        .O(\genblk1.charge_ind_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \genblk1.charge_ind_i_13 
       (.I0(mealy_state[0]),
        .I1(coin_val_IBUF),
        .I2(mealy_state[2]),
        .I3(mealy_state[1]),
        .O(\genblk1.charge_ind_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \genblk1.charge_ind_i_14 
       (.I0(mealy_state[1]),
        .I1(mealy_state[2]),
        .I2(mealy_state[0]),
        .I3(coin_val_IBUF),
        .I4(coin_putin_IBUF),
        .I5(mealy_nextstate[0]),
        .O(\genblk1.charge_ind_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \genblk1.charge_ind_i_15 
       (.I0(goods_choose_IBUF),
        .I1(mealy_nextstate[0]),
        .I2(mealy_nextstate[1]),
        .I3(mealy_nextstate[2]),
        .O(\genblk1.charge_ind_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \genblk1.charge_ind_i_16 
       (.I0(mealy_state[2]),
        .I1(mealy_state[0]),
        .I2(mealy_state[1]),
        .I3(coin_val_IBUF),
        .I4(coin_putin_IBUF),
        .I5(mealy_nextstate[0]),
        .O(\genblk1.charge_ind_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \genblk1.charge_ind_i_17 
       (.I0(mealy_nextstate[0]),
        .I1(mealy_state[0]),
        .I2(mealy_state[1]),
        .I3(coin_val_IBUF),
        .I4(coin_putin_IBUF),
        .I5(mealy_state[2]),
        .O(\genblk1.charge_ind_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \genblk1.charge_ind_i_18 
       (.I0(mealy_state[1]),
        .I1(mealy_state[2]),
        .I2(mealy_state[0]),
        .I3(buy_confirm_IBUF),
        .I4(goods_choose_IBUF),
        .I5(mealy_nextstate[0]),
        .O(\genblk1.charge_ind_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \genblk1.charge_ind_i_19 
       (.I0(buy_confirm_IBUF),
        .I1(mealy_state[1]),
        .I2(mealy_state[2]),
        .I3(mealy_state[0]),
        .O(\genblk1.charge_ind_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \genblk1.charge_ind_i_2 
       (.I0(\genblk1.charge_ind_i_3_n_0 ),
        .I1(\genblk1.charge_ind_i_4_n_0 ),
        .O(\genblk1.charge_ind_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \genblk1.charge_ind_i_20 
       (.I0(mealy_state[0]),
        .I1(mealy_nextstate[0]),
        .I2(coin_val_IBUF),
        .I3(mealy_state[1]),
        .I4(mealy_state[2]),
        .I5(coin_putin_IBUF),
        .O(\genblk1.charge_ind_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \genblk1.charge_ind_i_21 
       (.I0(mealy_state[1]),
        .I1(mealy_state[2]),
        .I2(mealy_state[0]),
        .I3(coin_val_IBUF),
        .I4(coin_putin_IBUF),
        .I5(mealy_nextstate[0]),
        .O(\genblk1.charge_ind_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFBBBBAAAAAAAA)) 
    \genblk1.charge_ind_i_3 
       (.I0(\genblk1.wrong_dis_i_2_n_0 ),
        .I1(\genblk1.charge_ind_i_5_n_0 ),
        .I2(\genblk1.wrong_dis_i_5_n_0 ),
        .I3(\genblk1.drinktk_ind_i_22_n_0 ),
        .I4(\genblk1.charge_ind_i_6_n_0 ),
        .I5(\genblk1.drinktk_ind_i_12_n_0 ),
        .O(\genblk1.charge_ind_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F10000)) 
    \genblk1.charge_ind_i_4 
       (.I0(\genblk1.charge_ind_i_7_n_0 ),
        .I1(\genblk1.charge_ind_i_8_n_0 ),
        .I2(\genblk1.charge_ind_i_9_n_0 ),
        .I3(\genblk1.charge_ind_i_10_n_0 ),
        .I4(\genblk1.drinktk_ind_i_12_n_0 ),
        .I5(\genblk1.charge_ind_i_11_n_0 ),
        .O(\genblk1.charge_ind_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \genblk1.charge_ind_i_5 
       (.I0(\genblk1.drinktk_ind_i_11_n_0 ),
        .I1(mealy_state[2]),
        .I2(mealy_state[0]),
        .I3(mealy_state[1]),
        .O(\genblk1.charge_ind_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \genblk1.charge_ind_i_6 
       (.I0(p_0_in86_in),
        .I1(cancel_flag_IBUF),
        .I2(mealy_nextstate[0]),
        .I3(mealy_nextstate[1]),
        .I4(mealy_nextstate[2]),
        .O(\genblk1.charge_ind_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFBDBDBD)) 
    \genblk1.charge_ind_i_7 
       (.I0(mealy_state[0]),
        .I1(mealy_state[1]),
        .I2(mealy_state[2]),
        .I3(\genblk1.drinktk_ind_i_11_n_0 ),
        .I4(\genblk1.charge_ind_i_12_n_0 ),
        .O(\genblk1.charge_ind_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0303030357FF0303)) 
    \genblk1.charge_ind_i_8 
       (.I0(\genblk1.charge_val[3]_i_21_n_0 ),
        .I1(\genblk1.charge_val[3]_i_20_n_0 ),
        .I2(\genblk1.charge_ind_i_13_n_0 ),
        .I3(\genblk1.charge_ind_i_14_n_0 ),
        .I4(mealy_nextstate[2]),
        .I5(mealy_nextstate[1]),
        .O(\genblk1.charge_ind_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F880000)) 
    \genblk1.charge_ind_i_9 
       (.I0(buy_confirm_IBUF),
        .I1(\genblk1.charge_ind_i_15_n_0 ),
        .I2(\genblk1.drinktk_ind_i_11_n_0 ),
        .I3(mealy_state[0]),
        .I4(mealy_state[2]),
        .I5(mealy_state[1]),
        .O(\genblk1.charge_ind_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.charge_ind_reg 
       (.C(clk_use_BUFG),
        .CE(\genblk1.hold_ind_i_1_n_0 ),
        .D(\genblk1.charge_ind_i_1_n_0 ),
        .Q(charge_ind_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8888888AAAAAAAA)) 
    \genblk1.charge_val[0]_i_1 
       (.I0(\genblk1.drinktk_ind_i_6_n_0 ),
        .I1(\genblk1.judge_i_2_n_0 ),
        .I2(\genblk1.charge_val[0]_i_2_n_0 ),
        .I3(\genblk1.wrong_dis_i_6_n_0 ),
        .I4(\genblk1.charge_val[0]_i_3_n_0 ),
        .I5(\genblk1.charge_val[2]_i_2_n_0 ),
        .O(\genblk1.charge_val[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFEF)) 
    \genblk1.charge_val[0]_i_2 
       (.I0(\genblk1.drinktk_ind_i_11_n_0 ),
        .I1(mealy_state[0]),
        .I2(mealy_state[1]),
        .I3(mealy_state[2]),
        .I4(\genblk1.drinktk_ind_i_4_n_0 ),
        .O(\genblk1.charge_val[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBA00)) 
    \genblk1.charge_val[0]_i_3 
       (.I0(\genblk1.drinktk_ind_i_14_n_0 ),
        .I1(\genblk1.wrong_dis_i_7_n_0 ),
        .I2(\genblk1.charge_val[0]_i_4_n_0 ),
        .I3(\genblk1.charge_val[2]_i_5_n_0 ),
        .I4(\genblk1.charge_val[0]_i_5_n_0 ),
        .I5(\genblk1.wrong_dis_i_4_n_0 ),
        .O(\genblk1.charge_val[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFAEAA)) 
    \genblk1.charge_val[0]_i_4 
       (.I0(\genblk1.charge_val[0]_i_6_n_0 ),
        .I1(\genblk1.charge_val[0]_i_7_n_0 ),
        .I2(p_0_in70_in),
        .I3(\genblk1.drinktk_ind_i_11_n_0 ),
        .I4(\genblk1.charge_val[1]_i_4_n_0 ),
        .I5(\genblk1.charge_val[1]_i_3_n_0 ),
        .O(\genblk1.charge_val[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.charge_val[0]_i_5 
       (.I0(\genblk1.drinktk_ind_i_10_n_0 ),
        .I1(\genblk1.wrong_dis_i_5_n_0 ),
        .O(\genblk1.charge_val[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \genblk1.charge_val[0]_i_6 
       (.I0(\genblk1.wrong_dis_i_14_n_0 ),
        .I1(\genblk1.wrong_dis_i_16_n_0 ),
        .I2(mealy_state[1]),
        .I3(mealy_state[2]),
        .I4(mealy_state[0]),
        .I5(\genblk1.drinktk_ind_i_11_n_0 ),
        .O(\genblk1.charge_val[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.charge_val[0]_i_7 
       (.I0(\genblk1.charge_val[3]_i_8_n_0 ),
        .I1(goods_choose_IBUF),
        .O(\genblk1.charge_val[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80FFFFFF)) 
    \genblk1.charge_val[1]_i_1 
       (.I0(\genblk1.charge_val[3]_i_7_n_0 ),
        .I1(\genblk1.charge_val[1]_i_2_n_0 ),
        .I2(\genblk1.charge_val[2]_i_2_n_0 ),
        .I3(op_start_IBUF),
        .I4(Reset_IBUF),
        .O(\genblk1.charge_val[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA000000FFFFFFFF)) 
    \genblk1.charge_val[1]_i_2 
       (.I0(\genblk1.charge_val[1]_i_3_n_0 ),
        .I1(\genblk1.charge_val[1]_i_4_n_0 ),
        .I2(\genblk1.charge_val[2]_i_4_n_0 ),
        .I3(\genblk1.charge_val[3]_i_18_n_0 ),
        .I4(\genblk1.charge_val[2]_i_5_n_0 ),
        .I5(\genblk1.charge_val[2]_i_6_n_0 ),
        .O(\genblk1.charge_val[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \genblk1.charge_val[1]_i_3 
       (.I0(\genblk1.charge_val[3]_i_20_n_0 ),
        .I1(mealy_state[1]),
        .I2(mealy_state[2]),
        .I3(coin_val_IBUF),
        .I4(mealy_state[0]),
        .O(\genblk1.charge_val[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \genblk1.charge_val[1]_i_4 
       (.I0(\genblk1.drinktk_ind_i_20_n_0 ),
        .I1(mealy_state[0]),
        .I2(buy_confirm_IBUF),
        .I3(mealy_state[2]),
        .I4(mealy_state[1]),
        .I5(mealy_nextstate[0]),
        .O(\genblk1.charge_val[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.charge_val[2]_i_1 
       (.I0(\genblk1.charge_val[2]_i_2_n_0 ),
        .I1(\genblk1.charge_val[2]_i_3_n_0 ),
        .O(\genblk1.charge_val[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \genblk1.charge_val[2]_i_2 
       (.I0(\genblk1.drinktk_ind_i_18_n_0 ),
        .I1(\genblk1.hold_ind_i_8_n_0 ),
        .I2(\genblk1.hold_ind_i_9_n_0 ),
        .I3(\genblk1.hold_ind_i_10_n_0 ),
        .I4(\genblk1.hold_ind_i_11_n_0 ),
        .I5(\genblk1.hold_ind_i_12_n_0 ),
        .O(\genblk1.charge_val[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF200FFFFFFFFFFFF)) 
    \genblk1.charge_val[2]_i_3 
       (.I0(\genblk1.drinktk_ind_i_17_n_0 ),
        .I1(\genblk1.charge_val[2]_i_4_n_0 ),
        .I2(\genblk1.drinktk_ind_i_14_n_0 ),
        .I3(\genblk1.charge_val[2]_i_5_n_0 ),
        .I4(\genblk1.charge_val[2]_i_6_n_0 ),
        .I5(\genblk1.charge_val[3]_i_7_n_0 ),
        .O(\genblk1.charge_val[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEE00000EEE0)) 
    \genblk1.charge_val[2]_i_4 
       (.I0(\genblk1.drinktk_ind_i_15_n_0 ),
        .I1(\genblk1.charge_val[3]_i_8_n_0 ),
        .I2(p_0_in70_in),
        .I3(\genblk1.hold_ind_i_5_n_0 ),
        .I4(\genblk1.drinktk_ind_i_16_n_0 ),
        .I5(cancel_flag_IBUF),
        .O(\genblk1.charge_val[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1.charge_val[2]_i_5 
       (.I0(\genblk1.wrong_dis_i_5_n_0 ),
        .I1(\genblk1.drinktk_ind_i_8_n_0 ),
        .O(\genblk1.charge_val[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \genblk1.charge_val[2]_i_6 
       (.I0(\genblk1.drinktk_ind_i_9_n_0 ),
        .I1(\genblk1.charge_val[3]_i_11_n_0 ),
        .I2(\genblk1.wrong_dis_i_5_n_0 ),
        .I3(\genblk1.drinktk_ind_i_10_n_0 ),
        .O(\genblk1.charge_val[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \genblk1.charge_val[3]_i_1 
       (.I0(\genblk1.drinktk_ind_i_7_n_0 ),
        .I1(\genblk1.charge_val[3]_i_3_n_0 ),
        .I2(\genblk1.charge_val[3]_i_4_n_0 ),
        .I3(\genblk1.charge_val[3]_i_5_n_0 ),
        .I4(\genblk1.charge_val[3]_i_6_n_0 ),
        .I5(\genblk1.charge_val[3]_i_7_n_0 ),
        .O(\genblk1.charge_val[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \genblk1.charge_val[3]_i_10 
       (.I0(\genblk1.drinktk_ind_i_2_n_0 ),
        .I1(\genblk1.charge_val[3]_i_11_n_0 ),
        .I2(\genblk1.charge_val[3]_i_18_n_0 ),
        .O(\genblk1.charge_val[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBFFFFF)) 
    \genblk1.charge_val[3]_i_11 
       (.I0(coin_val_IBUF),
        .I1(\genblk1.hold_ind_i_14_n_0 ),
        .I2(coin_putin_IBUF),
        .I3(mealy_nextstate[0]),
        .I4(\genblk1.drinktk_ind_i_23_n_0 ),
        .I5(\genblk1.drinktk_ind_i_3_n_0 ),
        .O(\genblk1.charge_val[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \genblk1.charge_val[3]_i_12 
       (.I0(mealy_nextstate[0]),
        .I1(mealy_state[0]),
        .I2(mealy_state[1]),
        .I3(buy_confirm_IBUF),
        .I4(mealy_state[2]),
        .O(\genblk1.charge_val[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \genblk1.charge_val[3]_i_13 
       (.I0(\genblk1.drinktk_ind_i_14_n_0 ),
        .I1(\genblk1.drinktk_ind_i_8_n_0 ),
        .O(\genblk1.charge_val[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAABA)) 
    \genblk1.charge_val[3]_i_14 
       (.I0(\genblk1.wrong_dis_i_7_n_0 ),
        .I1(\genblk1.drinktk_ind_i_11_n_0 ),
        .I2(mealy_state[0]),
        .I3(\genblk1.charge_val[3]_i_19_n_0 ),
        .I4(\genblk1.wrong_dis_i_16_n_0 ),
        .I5(\genblk1.wrong_dis_i_14_n_0 ),
        .O(\genblk1.charge_val[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \genblk1.charge_val[3]_i_15 
       (.I0(\genblk1.hold_ind_i_7_n_0 ),
        .I1(\genblk1.charge_val[3]_i_8_n_0 ),
        .I2(goods_choose_IBUF),
        .I3(\genblk1.drinktk_ind_i_13_n_0 ),
        .I4(\genblk1.judge_reg_n_0 ),
        .O(\genblk1.charge_val[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1.charge_val[3]_i_16 
       (.I0(mealy_nextstate[1]),
        .I1(mealy_nextstate[2]),
        .O(\genblk1.charge_val[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020002)) 
    \genblk1.charge_val[3]_i_17 
       (.I0(mealy_state[0]),
        .I1(coin_val_IBUF),
        .I2(\genblk1.charge_val[3]_i_19_n_0 ),
        .I3(\genblk1.charge_val[3]_i_20_n_0 ),
        .I4(\genblk1.charge_val[3]_i_21_n_0 ),
        .I5(\genblk1.drinktk_ind_i_20_n_0 ),
        .O(\genblk1.charge_val[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1.charge_val[3]_i_18 
       (.I0(\genblk1.drinktk_ind_i_14_n_0 ),
        .I1(\genblk1.charge_val[3]_i_14_n_0 ),
        .O(\genblk1.charge_val[3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \genblk1.charge_val[3]_i_19 
       (.I0(mealy_state[1]),
        .I1(mealy_state[2]),
        .O(\genblk1.charge_val[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAFBAAAAFFFFFFFF)) 
    \genblk1.charge_val[3]_i_2 
       (.I0(\genblk1.drinktk_ind_i_7_n_0 ),
        .I1(\genblk1.charge_val[3]_i_8_n_0 ),
        .I2(cancel_flag_IBUF),
        .I3(\genblk1.charge_val[3]_i_9_n_0 ),
        .I4(\genblk1.charge_val[3]_i_10_n_0 ),
        .I5(\genblk1.charge_val[3]_i_7_n_0 ),
        .O(\genblk1.charge_val[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \genblk1.charge_val[3]_i_20 
       (.I0(coin_putin_IBUF),
        .I1(mealy_nextstate[0]),
        .I2(mealy_nextstate[1]),
        .I3(mealy_nextstate[2]),
        .O(\genblk1.charge_val[3]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \genblk1.charge_val[3]_i_21 
       (.I0(mealy_nextstate[0]),
        .I1(mealy_state[1]),
        .I2(mealy_state[2]),
        .I3(buy_confirm_IBUF),
        .I4(mealy_state[0]),
        .O(\genblk1.charge_val[3]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.charge_val[3]_i_3 
       (.I0(\genblk1.charge_val[3]_i_11_n_0 ),
        .I1(\genblk1.drinktk_ind_i_9_n_0 ),
        .O(\genblk1.charge_val[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000555530000000)) 
    \genblk1.charge_val[3]_i_4 
       (.I0(\genblk1.charge_val[3]_i_12_n_0 ),
        .I1(mealy_nextstate[0]),
        .I2(mealy_state[0]),
        .I3(\genblk1.wrong_dis_i_11_n_0 ),
        .I4(mealy_nextstate[2]),
        .I5(mealy_nextstate[1]),
        .O(\genblk1.charge_val[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \genblk1.charge_val[3]_i_5 
       (.I0(goods_choose_IBUF),
        .I1(\genblk1.charge_val[3]_i_8_n_0 ),
        .I2(\genblk1.hold_ind_i_7_n_0 ),
        .O(\genblk1.charge_val[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001110000)) 
    \genblk1.charge_val[3]_i_6 
       (.I0(\genblk1.charge_val[3]_i_9_n_0 ),
        .I1(\genblk1.charge_val[3]_i_13_n_0 ),
        .I2(goods_choose_IBUF),
        .I3(\genblk1.charge_val[3]_i_8_n_0 ),
        .I4(\genblk1.hold_ind_i_5_n_0 ),
        .I5(\genblk1.charge_val[3]_i_14_n_0 ),
        .O(\genblk1.charge_val[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444404)) 
    \genblk1.charge_val[3]_i_7 
       (.I0(\genblk1.hold_ind_i_6_n_0 ),
        .I1(\genblk1.drinktk_ind_i_6_n_0 ),
        .I2(\genblk1.charge_val[3]_i_6_n_0 ),
        .I3(\genblk1.judge_i_3_n_0 ),
        .I4(\genblk1.charge_val[3]_i_15_n_0 ),
        .I5(\genblk1.drinktk_ind_i_3_n_0 ),
        .O(\genblk1.charge_val[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \genblk1.charge_val[3]_i_8 
       (.I0(mealy_state[0]),
        .I1(mealy_state[1]),
        .I2(mealy_state[2]),
        .I3(\genblk1.charge_val[3]_i_16_n_0 ),
        .I4(mealy_nextstate[0]),
        .I5(buy_confirm_IBUF),
        .O(\genblk1.charge_val[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \genblk1.charge_val[3]_i_9 
       (.I0(\genblk1.drinktk_ind_i_15_n_0 ),
        .I1(\genblk1.charge_val[3]_i_17_n_0 ),
        .I2(\genblk1.drinktk_ind_i_16_n_0 ),
        .O(\genblk1.charge_val[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.charge_val_reg[0] 
       (.C(clk_use_BUFG),
        .CE(\genblk1.charge_val[3]_i_1_n_0 ),
        .D(\genblk1.charge_val[0]_i_1_n_0 ),
        .Q(\genblk1.charge_val_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \genblk1.charge_val_reg[1] 
       (.C(clk_use_BUFG),
        .CE(\genblk1.charge_val[3]_i_1_n_0 ),
        .D(\genblk1.charge_val[1]_i_1_n_0 ),
        .Q(\genblk1.charge_val_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.charge_val_reg[2] 
       (.C(clk_use_BUFG),
        .CE(\genblk1.charge_val[3]_i_1_n_0 ),
        .D(\genblk1.charge_val[2]_i_1_n_0 ),
        .Q(\genblk1.charge_val_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \genblk1.charge_val_reg[3] 
       (.C(clk_use_BUFG),
        .CE(\genblk1.charge_val[3]_i_1_n_0 ),
        .D(\genblk1.charge_val[3]_i_2_n_0 ),
        .Q(\genblk1.charge_val_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0F0F00000F0F0001)) 
    \genblk1.count[0]_i_10 
       (.I0(\genblk1.count_reg [2]),
        .I1(\genblk1.count_reg [1]),
        .I2(\genblk1.count[0]_i_24_n_0 ),
        .I3(\genblk1.count_reg [4]),
        .I4(\genblk1.count[0]_i_14_n_0 ),
        .I5(\genblk1.count_reg [11]),
        .O(\genblk1.count[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \genblk1.count[0]_i_11 
       (.I0(\genblk1.count[0]_i_25_n_0 ),
        .I1(\genblk1.count[0]_i_20_n_0 ),
        .I2(\genblk1.count[8]_i_6_n_0 ),
        .O(\genblk1.count[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \genblk1.count[0]_i_12 
       (.I0(op_start_IBUF),
        .I1(Reset_IBUF),
        .I2(\genblk1.drinktk_ind_i_13_n_0 ),
        .O(\genblk1.count[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \genblk1.count[0]_i_13 
       (.I0(\genblk1.charge_ind_i_10_n_0 ),
        .I1(\genblk1.count[0]_i_26_n_0 ),
        .I2(\genblk1.drinktk_ind_i_12_n_0 ),
        .I3(\genblk1.count[0]_i_27_n_0 ),
        .I4(\genblk1.count[0]_i_28_n_0 ),
        .I5(\genblk1.charge_ind_i_8_n_0 ),
        .O(\genblk1.count[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h888888888A8A888A)) 
    \genblk1.count[0]_i_14 
       (.I0(\genblk1.drinktk_ind_i_6_n_0 ),
        .I1(\genblk1.drinktk_ind_i_13_n_0 ),
        .I2(\genblk1.charge_ind_i_4_n_0 ),
        .I3(\genblk1.count[0]_i_29_n_0 ),
        .I4(\genblk1.count[0]_i_30_n_0 ),
        .I5(\genblk1.charge_ind_i_3_n_0 ),
        .O(\genblk1.count[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h005F004FFFFFFFFF)) 
    \genblk1.count[0]_i_15 
       (.I0(\genblk1.count[12]_i_6_n_0 ),
        .I1(\genblk1.count_reg [15]),
        .I2(\genblk1.count[0]_i_31_n_0 ),
        .I3(\genblk1.count[0]_i_14_n_0 ),
        .I4(\genblk1.count_reg [18]),
        .I5(\genblk1.drinktk_ind_i_6_n_0 ),
        .O(\genblk1.count[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h7500753075007500)) 
    \genblk1.count[0]_i_16 
       (.I0(\genblk1.drinktk_ind_i_6_n_0 ),
        .I1(\genblk1.drinktk_ind_i_4_n_0 ),
        .I2(\genblk1.count[4]_i_6_n_0 ),
        .I3(\genblk1.count_reg [0]),
        .I4(\genblk1.count[0]_i_32_n_0 ),
        .I5(\genblk1.charge_ind_i_2_n_0 ),
        .O(\genblk1.count[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \genblk1.count[0]_i_17 
       (.I0(\genblk1.count_reg [11]),
        .I1(\genblk1.count_reg [12]),
        .I2(\genblk1.count[0]_i_14_n_0 ),
        .I3(\genblk1.count_reg [13]),
        .O(\genblk1.count[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00003F2AFFAA3F2A)) 
    \genblk1.count[0]_i_18 
       (.I0(\genblk1.count_reg [10]),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .I3(\genblk1.count_reg [8]),
        .I4(\genblk1.count[4]_i_6_n_0 ),
        .I5(\genblk1.count[0]_i_12_n_0 ),
        .O(\genblk1.count[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00E000E0E0E000E0)) 
    \genblk1.count[0]_i_19 
       (.I0(\genblk1.count_reg [5]),
        .I1(\genblk1.count_reg [6]),
        .I2(\genblk1.count_reg [7]),
        .I3(\genblk1.drinktk_ind_i_6_n_0 ),
        .I4(\genblk1.count[4]_i_6_n_0 ),
        .I5(\genblk1.drinktk_ind_i_13_n_0 ),
        .O(\genblk1.count[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0004040404040404)) 
    \genblk1.count[0]_i_2 
       (.I0(\genblk1.count[0]_i_7_n_0 ),
        .I1(\genblk1.drinktk_ind_i_6_n_0 ),
        .I2(\genblk1.count[0]_i_8_n_0 ),
        .I3(\genblk1.count[0]_i_9_n_0 ),
        .I4(\genblk1.count[0]_i_10_n_0 ),
        .I5(\genblk1.count[0]_i_11_n_0 ),
        .O(p_60_out));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h40707070)) 
    \genblk1.count[0]_i_20 
       (.I0(\genblk1.count[0]_i_12_n_0 ),
        .I1(\genblk1.count[4]_i_6_n_0 ),
        .I2(\genblk1.count_reg [10]),
        .I3(op_start_IBUF),
        .I4(Reset_IBUF),
        .O(\genblk1.count[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFB3BFFFFFFFFFFFF)) 
    \genblk1.count[0]_i_21 
       (.I0(\genblk1.drinktk_ind_i_6_n_0 ),
        .I1(\genblk1.count_reg [3]),
        .I2(\genblk1.count[4]_i_6_n_0 ),
        .I3(\genblk1.count[0]_i_12_n_0 ),
        .I4(\genblk1.count_reg [7]),
        .I5(\genblk1.count_reg [4]),
        .O(\genblk1.count[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF7000000F7D5D5D5)) 
    \genblk1.count[0]_i_22 
       (.I0(\genblk1.count_reg [7]),
        .I1(\genblk1.count[4]_i_6_n_0 ),
        .I2(\genblk1.count[0]_i_12_n_0 ),
        .I3(Reset_IBUF),
        .I4(op_start_IBUF),
        .I5(\genblk1.count_reg [0]),
        .O(\genblk1.count[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC0D50055C0D5)) 
    \genblk1.count[0]_i_23 
       (.I0(\genblk1.count_reg [3]),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .I3(\genblk1.count_reg [8]),
        .I4(\genblk1.count[4]_i_6_n_0 ),
        .I5(\genblk1.count[0]_i_12_n_0 ),
        .O(\genblk1.count[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h3F2A3F2AFFAA3F2A)) 
    \genblk1.count[0]_i_24 
       (.I0(\genblk1.count_reg [6]),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .I3(\genblk1.count_reg [5]),
        .I4(\genblk1.count[4]_i_6_n_0 ),
        .I5(\genblk1.drinktk_ind_i_13_n_0 ),
        .O(\genblk1.count[0]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hBFBBBFBF)) 
    \genblk1.count[0]_i_25 
       (.I0(\genblk1.drinktk_ind_i_4_n_0 ),
        .I1(\genblk1.count[4]_i_6_n_0 ),
        .I2(\genblk1.count_reg [0]),
        .I3(\genblk1.count[0]_i_32_n_0 ),
        .I4(\genblk1.charge_ind_i_2_n_0 ),
        .O(\genblk1.count[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \genblk1.count[0]_i_26 
       (.I0(mealy_nextstate[1]),
        .I1(mealy_nextstate[2]),
        .I2(mealy_nextstate[0]),
        .I3(goods_choose_IBUF),
        .I4(buy_confirm_IBUF),
        .I5(p_0_in86_in),
        .O(\genblk1.count[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAAA00000000)) 
    \genblk1.count[0]_i_27 
       (.I0(\genblk1.charge_ind_i_20_n_0 ),
        .I1(p_0_in86_in),
        .I2(coin_val_IBUF),
        .I3(coin_putin_IBUF),
        .I4(mealy_nextstate[0]),
        .I5(\genblk1.drinktk_ind_i_20_n_0 ),
        .O(\genblk1.count[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h20200000000000FF)) 
    \genblk1.count[0]_i_28 
       (.I0(coin_putin_IBUF),
        .I1(mealy_nextstate[0]),
        .I2(p_0_in70_in),
        .I3(\genblk1.count[0]_i_33_n_0 ),
        .I4(mealy_nextstate[1]),
        .I5(mealy_nextstate[2]),
        .O(\genblk1.count[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \genblk1.count[0]_i_29 
       (.I0(\genblk1.drinktk_ind_i_12_n_0 ),
        .I1(\genblk1.count[0]_i_26_n_0 ),
        .I2(\genblk1.drinktk_ind_i_22_n_0 ),
        .I3(\genblk1.wrong_dis_i_5_n_0 ),
        .I4(\genblk1.drinktk_ind_i_10_n_0 ),
        .O(\genblk1.count[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h5554000055570000)) 
    \genblk1.count[0]_i_3 
       (.I0(\genblk1.count[0]_i_12_n_0 ),
        .I1(\genblk1.charge_ind_i_4_n_0 ),
        .I2(\genblk1.count[0]_i_13_n_0 ),
        .I3(\genblk1.charge_ind_i_3_n_0 ),
        .I4(\genblk1.count_reg [3]),
        .I5(\genblk1.drinktk_ind_i_6_n_0 ),
        .O(\genblk1.count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \genblk1.count[0]_i_30 
       (.I0(\genblk1.wrong_dis_i_14_n_0 ),
        .I1(\genblk1.charge_val[3]_i_17_n_0 ),
        .I2(\genblk1.wrong_dis_i_15_n_0 ),
        .I3(\genblk1.hold_ind_i_7_n_0 ),
        .I4(\genblk1.wrong_dis_i_16_n_0 ),
        .I5(\genblk1.wrong_dis_i_7_n_0 ),
        .O(\genblk1.count[0]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \genblk1.count[0]_i_31 
       (.I0(\genblk1.count_reg [19]),
        .I1(\genblk1.count_reg [20]),
        .I2(\genblk1.count_reg [16]),
        .I3(\genblk1.count_reg [17]),
        .I4(\genblk1.count_reg [14]),
        .O(\genblk1.count[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFFFEFF)) 
    \genblk1.count[0]_i_32 
       (.I0(\genblk1.count[0]_i_34_n_0 ),
        .I1(\genblk1.count_reg [19]),
        .I2(\genblk1.count_reg [20]),
        .I3(\genblk1.hold_ind_i_9_n_0 ),
        .I4(\genblk1.count_reg [4]),
        .I5(\genblk1.count_reg [3]),
        .O(\genblk1.count[0]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \genblk1.count[0]_i_33 
       (.I0(mealy_nextstate[0]),
        .I1(coin_putin_IBUF),
        .I2(mealy_state[0]),
        .I3(mealy_state[1]),
        .I4(mealy_state[2]),
        .O(\genblk1.count[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \genblk1.count[0]_i_34 
       (.I0(\genblk1.count_reg [9]),
        .I1(\genblk1.count_reg [5]),
        .I2(\genblk1.count_reg [18]),
        .I3(\genblk1.count_reg [19]),
        .I4(\genblk1.count[0]_i_35_n_0 ),
        .I5(\genblk1.count[0]_i_36_n_0 ),
        .O(\genblk1.count[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \genblk1.count[0]_i_35 
       (.I0(\genblk1.count_reg [12]),
        .I1(\genblk1.count_reg [13]),
        .I2(\genblk1.count_reg [8]),
        .I3(\genblk1.count_reg [10]),
        .I4(\genblk1.count_reg [7]),
        .I5(\genblk1.count_reg [11]),
        .O(\genblk1.count[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \genblk1.count[0]_i_36 
       (.I0(\genblk1.count_reg [6]),
        .I1(\genblk1.count_reg [15]),
        .I2(\genblk1.count_reg [4]),
        .I3(\genblk1.count_reg [16]),
        .I4(\genblk1.count_reg [14]),
        .I5(\genblk1.count_reg [17]),
        .O(\genblk1.count[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[0]_i_4 
       (.I0(\genblk1.count_reg [2]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[0]_i_5 
       (.I0(\genblk1.count_reg [1]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF800000007F)) 
    \genblk1.count[0]_i_6 
       (.I0(\genblk1.count[0]_i_11_n_0 ),
        .I1(\genblk1.count[0]_i_10_n_0 ),
        .I2(\genblk1.count[0]_i_9_n_0 ),
        .I3(\genblk1.count[0]_i_8_n_0 ),
        .I4(\genblk1.count[0]_i_15_n_0 ),
        .I5(\genblk1.count[0]_i_16_n_0 ),
        .O(\genblk1.count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3033303333333233)) 
    \genblk1.count[0]_i_7 
       (.I0(\genblk1.count_reg [18]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .I2(\genblk1.count_reg [14]),
        .I3(\genblk1.hold_ind_i_18_n_0 ),
        .I4(\genblk1.count_reg [15]),
        .I5(\genblk1.count[12]_i_6_n_0 ),
        .O(\genblk1.count[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA800A8A8A800AAAA)) 
    \genblk1.count[0]_i_8 
       (.I0(\genblk1.count[0]_i_17_n_0 ),
        .I1(\genblk1.count[0]_i_18_n_0 ),
        .I2(\genblk1.count[0]_i_19_n_0 ),
        .I3(\genblk1.count[0]_i_20_n_0 ),
        .I4(\genblk1.count[8]_i_6_n_0 ),
        .I5(\genblk1.count[0]_i_21_n_0 ),
        .O(\genblk1.count[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCD000000)) 
    \genblk1.count[0]_i_9 
       (.I0(\genblk1.count_reg [12]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .I2(\genblk1.count_reg [13]),
        .I3(\genblk1.count[0]_i_22_n_0 ),
        .I4(\genblk1.count[0]_i_23_n_0 ),
        .O(\genblk1.count[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \genblk1.count[12]_i_2 
       (.I0(\genblk1.count[0]_i_14_n_0 ),
        .I1(\genblk1.count_reg [15]),
        .I2(\genblk1.count[12]_i_6_n_0 ),
        .O(\genblk1.count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[12]_i_3 
       (.I0(\genblk1.count_reg [14]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[12]_i_4 
       (.I0(\genblk1.count_reg [13]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[12]_i_5 
       (.I0(\genblk1.count_reg [12]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \genblk1.count[12]_i_6 
       (.I0(\genblk1.charge_ind_i_4_n_0 ),
        .I1(\genblk1.charge_ind_i_3_n_0 ),
        .I2(Reset_IBUF),
        .I3(op_start_IBUF),
        .I4(\genblk1.count[0]_i_32_n_0 ),
        .I5(\genblk1.count_reg [0]),
        .O(\genblk1.count[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[16]_i_2 
       (.I0(\genblk1.count_reg [19]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \genblk1.count[16]_i_3 
       (.I0(\genblk1.count_reg [18]),
        .I1(\genblk1.count[12]_i_6_n_0 ),
        .I2(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[16]_i_4 
       (.I0(\genblk1.count_reg [17]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[16]_i_5 
       (.I0(\genblk1.count_reg [16]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[20]_i_2 
       (.I0(\genblk1.count_reg [20]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[4]_i_2 
       (.I0(\genblk1.count_reg [7]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7070707070707050)) 
    \genblk1.count[4]_i_3 
       (.I0(\genblk1.drinktk_ind_i_6_n_0 ),
        .I1(\genblk1.drinktk_ind_i_4_n_0 ),
        .I2(\genblk1.count_reg [6]),
        .I3(\genblk1.charge_ind_i_4_n_0 ),
        .I4(\genblk1.count[0]_i_13_n_0 ),
        .I5(\genblk1.charge_ind_i_3_n_0 ),
        .O(\genblk1.count[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40707070)) 
    \genblk1.count[4]_i_4 
       (.I0(\genblk1.count[0]_i_12_n_0 ),
        .I1(\genblk1.count[4]_i_6_n_0 ),
        .I2(\genblk1.count_reg [5]),
        .I3(op_start_IBUF),
        .I4(Reset_IBUF),
        .O(\genblk1.count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[4]_i_5 
       (.I0(\genblk1.count_reg [4]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAABAA)) 
    \genblk1.count[4]_i_6 
       (.I0(\genblk1.charge_ind_i_4_n_0 ),
        .I1(\genblk1.charge_ind_i_10_n_0 ),
        .I2(\genblk1.count[0]_i_26_n_0 ),
        .I3(\genblk1.drinktk_ind_i_12_n_0 ),
        .I4(\genblk1.count[0]_i_30_n_0 ),
        .I5(\genblk1.charge_ind_i_3_n_0 ),
        .O(\genblk1.count[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.count[8]_i_2 
       (.I0(\genblk1.count_reg [11]),
        .I1(\genblk1.count[0]_i_14_n_0 ),
        .O(\genblk1.count[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40707070)) 
    \genblk1.count[8]_i_3 
       (.I0(\genblk1.count[0]_i_12_n_0 ),
        .I1(\genblk1.count[4]_i_6_n_0 ),
        .I2(\genblk1.count_reg [10]),
        .I3(op_start_IBUF),
        .I4(Reset_IBUF),
        .O(\genblk1.count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \genblk1.count[8]_i_4 
       (.I0(\genblk1.count[8]_i_6_n_0 ),
        .O(\genblk1.count[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5554000055570000)) 
    \genblk1.count[8]_i_5 
       (.I0(\genblk1.count[0]_i_12_n_0 ),
        .I1(\genblk1.charge_ind_i_4_n_0 ),
        .I2(\genblk1.count[0]_i_13_n_0 ),
        .I3(\genblk1.charge_ind_i_3_n_0 ),
        .I4(\genblk1.count_reg [8]),
        .I5(\genblk1.drinktk_ind_i_6_n_0 ),
        .O(\genblk1.count[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \genblk1.count[8]_i_6 
       (.I0(\genblk1.count[0]_i_14_n_0 ),
        .I1(\genblk1.count_reg [9]),
        .I2(\genblk1.count[12]_i_6_n_0 ),
        .O(\genblk1.count[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[0] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[0]_i_1_n_7 ),
        .Q(\genblk1.count_reg [0]),
        .R(1'b0));
  CARRY4 \genblk1.count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\genblk1.count_reg[0]_i_1_n_0 ,\genblk1.count_reg[0]_i_1_n_1 ,\genblk1.count_reg[0]_i_1_n_2 ,\genblk1.count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_60_out}),
        .O({\genblk1.count_reg[0]_i_1_n_4 ,\genblk1.count_reg[0]_i_1_n_5 ,\genblk1.count_reg[0]_i_1_n_6 ,\genblk1.count_reg[0]_i_1_n_7 }),
        .S({\genblk1.count[0]_i_3_n_0 ,\genblk1.count[0]_i_4_n_0 ,\genblk1.count[0]_i_5_n_0 ,\genblk1.count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[10] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[8]_i_1_n_5 ),
        .Q(\genblk1.count_reg [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[11] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[8]_i_1_n_4 ),
        .Q(\genblk1.count_reg [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[12] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[12]_i_1_n_7 ),
        .Q(\genblk1.count_reg [12]),
        .R(1'b0));
  CARRY4 \genblk1.count_reg[12]_i_1 
       (.CI(\genblk1.count_reg[8]_i_1_n_0 ),
        .CO({\genblk1.count_reg[12]_i_1_n_0 ,\genblk1.count_reg[12]_i_1_n_1 ,\genblk1.count_reg[12]_i_1_n_2 ,\genblk1.count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\genblk1.count_reg[12]_i_1_n_4 ,\genblk1.count_reg[12]_i_1_n_5 ,\genblk1.count_reg[12]_i_1_n_6 ,\genblk1.count_reg[12]_i_1_n_7 }),
        .S({\genblk1.count[12]_i_2_n_0 ,\genblk1.count[12]_i_3_n_0 ,\genblk1.count[12]_i_4_n_0 ,\genblk1.count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[13] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[12]_i_1_n_6 ),
        .Q(\genblk1.count_reg [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[14] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[12]_i_1_n_5 ),
        .Q(\genblk1.count_reg [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[15] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[12]_i_1_n_4 ),
        .Q(\genblk1.count_reg [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[16] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[16]_i_1_n_7 ),
        .Q(\genblk1.count_reg [16]),
        .R(1'b0));
  CARRY4 \genblk1.count_reg[16]_i_1 
       (.CI(\genblk1.count_reg[12]_i_1_n_0 ),
        .CO({\genblk1.count_reg[16]_i_1_n_0 ,\genblk1.count_reg[16]_i_1_n_1 ,\genblk1.count_reg[16]_i_1_n_2 ,\genblk1.count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\genblk1.count_reg[16]_i_1_n_4 ,\genblk1.count_reg[16]_i_1_n_5 ,\genblk1.count_reg[16]_i_1_n_6 ,\genblk1.count_reg[16]_i_1_n_7 }),
        .S({\genblk1.count[16]_i_2_n_0 ,\genblk1.count[16]_i_3_n_0 ,\genblk1.count[16]_i_4_n_0 ,\genblk1.count[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[17] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[16]_i_1_n_6 ),
        .Q(\genblk1.count_reg [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[18] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[16]_i_1_n_5 ),
        .Q(\genblk1.count_reg [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[19] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[16]_i_1_n_4 ),
        .Q(\genblk1.count_reg [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[1] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[0]_i_1_n_6 ),
        .Q(\genblk1.count_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[20] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[20]_i_1_n_7 ),
        .Q(\genblk1.count_reg [20]),
        .R(1'b0));
  CARRY4 \genblk1.count_reg[20]_i_1 
       (.CI(\genblk1.count_reg[16]_i_1_n_0 ),
        .CO(\NLW_genblk1.count_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_genblk1.count_reg[20]_i_1_O_UNCONNECTED [3:1],\genblk1.count_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\genblk1.count[20]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[2] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[0]_i_1_n_5 ),
        .Q(\genblk1.count_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[3] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[0]_i_1_n_4 ),
        .Q(\genblk1.count_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[4] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[4]_i_1_n_7 ),
        .Q(\genblk1.count_reg [4]),
        .R(1'b0));
  CARRY4 \genblk1.count_reg[4]_i_1 
       (.CI(\genblk1.count_reg[0]_i_1_n_0 ),
        .CO({\genblk1.count_reg[4]_i_1_n_0 ,\genblk1.count_reg[4]_i_1_n_1 ,\genblk1.count_reg[4]_i_1_n_2 ,\genblk1.count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\genblk1.count_reg[4]_i_1_n_4 ,\genblk1.count_reg[4]_i_1_n_5 ,\genblk1.count_reg[4]_i_1_n_6 ,\genblk1.count_reg[4]_i_1_n_7 }),
        .S({\genblk1.count[4]_i_2_n_0 ,\genblk1.count[4]_i_3_n_0 ,\genblk1.count[4]_i_4_n_0 ,\genblk1.count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[5] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[4]_i_1_n_6 ),
        .Q(\genblk1.count_reg [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[6] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[4]_i_1_n_5 ),
        .Q(\genblk1.count_reg [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[7] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[4]_i_1_n_4 ),
        .Q(\genblk1.count_reg [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[8] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[8]_i_1_n_7 ),
        .Q(\genblk1.count_reg [8]),
        .R(1'b0));
  CARRY4 \genblk1.count_reg[8]_i_1 
       (.CI(\genblk1.count_reg[4]_i_1_n_0 ),
        .CO({\genblk1.count_reg[8]_i_1_n_0 ,\genblk1.count_reg[8]_i_1_n_1 ,\genblk1.count_reg[8]_i_1_n_2 ,\genblk1.count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\genblk1.count_reg[8]_i_1_n_4 ,\genblk1.count_reg[8]_i_1_n_5 ,\genblk1.count_reg[8]_i_1_n_6 ,\genblk1.count_reg[8]_i_1_n_7 }),
        .S({\genblk1.count[8]_i_2_n_0 ,\genblk1.count[8]_i_3_n_0 ,\genblk1.count[8]_i_4_n_0 ,\genblk1.count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.count_reg[9] 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.count_reg[8]_i_1_n_6 ),
        .Q(\genblk1.count_reg [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000010001000100)) 
    \genblk1.drinktk_ind_i_1 
       (.I0(\genblk1.drinktk_ind_i_2_n_0 ),
        .I1(\genblk1.drinktk_ind_i_3_n_0 ),
        .I2(\genblk1.drinktk_ind_i_4_n_0 ),
        .I3(\genblk1.drinktk_ind_i_5_n_0 ),
        .I4(\genblk1.drinktk_ind_i_6_n_0 ),
        .I5(\genblk1.drinktk_ind_i_7_n_0 ),
        .O(\genblk1.drinktk_ind_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \genblk1.drinktk_ind_i_10 
       (.I0(\genblk1.drinktk_ind_i_23_n_0 ),
        .I1(mealy_state[2]),
        .I2(buy_confirm_IBUF),
        .I3(mealy_state[1]),
        .I4(mealy_state[0]),
        .I5(mealy_nextstate[0]),
        .O(\genblk1.drinktk_ind_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \genblk1.drinktk_ind_i_11 
       (.I0(cancel_flag_IBUF),
        .I1(mealy_nextstate[0]),
        .I2(mealy_nextstate[1]),
        .I3(mealy_nextstate[2]),
        .O(\genblk1.drinktk_ind_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7777377733333333)) 
    \genblk1.drinktk_ind_i_12 
       (.I0(\genblk1.drinktk_ind_i_24_n_0 ),
        .I1(\genblk1.drinktk_ind_i_23_n_0 ),
        .I2(\genblk1.wrong_dis_i_11_n_0 ),
        .I3(mealy_nextstate[0]),
        .I4(mealy_state[0]),
        .I5(\genblk1.drinktk_ind_i_25_n_0 ),
        .O(\genblk1.drinktk_ind_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0200000800000000)) 
    \genblk1.drinktk_ind_i_13 
       (.I0(\genblk1.hold_ind_i_14_n_0 ),
        .I1(mealy_nextstate[1]),
        .I2(mealy_nextstate[2]),
        .I3(mealy_nextstate[0]),
        .I4(coin_val_IBUF),
        .I5(coin_putin_IBUF),
        .O(\genblk1.drinktk_ind_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \genblk1.drinktk_ind_i_14 
       (.I0(mealy_nextstate[2]),
        .I1(mealy_nextstate[1]),
        .I2(mealy_nextstate[0]),
        .I3(goods_choose_IBUF),
        .I4(p_0_in86_in),
        .I5(buy_confirm_IBUF),
        .O(\genblk1.drinktk_ind_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0A00000C00000000)) 
    \genblk1.drinktk_ind_i_15 
       (.I0(coin_putin_IBUF),
        .I1(cancel_flag_IBUF),
        .I2(mealy_nextstate[0]),
        .I3(mealy_nextstate[1]),
        .I4(mealy_nextstate[2]),
        .I5(p_0_in70_in),
        .O(\genblk1.drinktk_ind_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \genblk1.drinktk_ind_i_16 
       (.I0(p_0_in70_in),
        .I1(mealy_nextstate[2]),
        .I2(mealy_nextstate[1]),
        .I3(mealy_nextstate[0]),
        .I4(buy_confirm_IBUF),
        .O(\genblk1.drinktk_ind_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1.drinktk_ind_i_17 
       (.I0(\genblk1.charge_val[3]_i_17_n_0 ),
        .I1(\genblk1.charge_val[3]_i_14_n_0 ),
        .O(\genblk1.drinktk_ind_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF77FF7FFF7FFF7F)) 
    \genblk1.drinktk_ind_i_18 
       (.I0(\genblk1.hold_ind_i_23_n_0 ),
        .I1(\genblk1.count_reg [7]),
        .I2(\genblk1.count_reg [14]),
        .I3(\genblk1.count[0]_i_14_n_0 ),
        .I4(\genblk1.count_reg [13]),
        .I5(\genblk1.count_reg [12]),
        .O(\genblk1.drinktk_ind_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \genblk1.drinktk_ind_i_19 
       (.I0(\genblk1.count[0]_i_14_n_0 ),
        .I1(\genblk1.count_reg [2]),
        .I2(\genblk1.count_reg [1]),
        .O(\genblk1.drinktk_ind_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \genblk1.drinktk_ind_i_2 
       (.I0(\genblk1.drinktk_ind_i_8_n_0 ),
        .I1(\genblk1.drinktk_ind_i_9_n_0 ),
        .I2(\genblk1.drinktk_ind_i_10_n_0 ),
        .I3(\genblk1.wrong_dis_i_5_n_0 ),
        .O(\genblk1.drinktk_ind_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.drinktk_ind_i_20 
       (.I0(mealy_nextstate[2]),
        .I1(mealy_nextstate[1]),
        .O(\genblk1.drinktk_ind_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \genblk1.drinktk_ind_i_21 
       (.I0(mealy_state[0]),
        .I1(mealy_state[2]),
        .I2(mealy_state[1]),
        .O(p_0_in86_in));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \genblk1.drinktk_ind_i_22 
       (.I0(\genblk1.drinktk_ind_i_23_n_0 ),
        .I1(mealy_nextstate[0]),
        .I2(coin_putin_IBUF),
        .I3(coin_val_IBUF),
        .I4(\FSM_sequential_genblk1.mealy_nextstate[2]_i_4_n_0 ),
        .I5(mealy_state[2]),
        .O(\genblk1.drinktk_ind_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.drinktk_ind_i_23 
       (.I0(mealy_nextstate[1]),
        .I1(mealy_nextstate[2]),
        .O(\genblk1.drinktk_ind_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \genblk1.drinktk_ind_i_24 
       (.I0(mealy_state[2]),
        .I1(mealy_state[1]),
        .I2(mealy_state[0]),
        .I3(mealy_nextstate[0]),
        .I4(coin_putin_IBUF),
        .I5(coin_val_IBUF),
        .O(\genblk1.drinktk_ind_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \genblk1.drinktk_ind_i_25 
       (.I0(mealy_nextstate[0]),
        .I1(mealy_state[0]),
        .I2(buy_confirm_IBUF),
        .I3(mealy_state[2]),
        .I4(mealy_state[1]),
        .O(\genblk1.drinktk_ind_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \genblk1.drinktk_ind_i_26 
       (.I0(mealy_state[2]),
        .I1(mealy_state[1]),
        .I2(mealy_state[0]),
        .O(p_0_in70_in));
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \genblk1.drinktk_ind_i_3 
       (.I0(\genblk1.drinktk_ind_i_11_n_0 ),
        .I1(mealy_state[0]),
        .I2(mealy_state[1]),
        .I3(mealy_state[2]),
        .I4(\genblk1.drinktk_ind_i_12_n_0 ),
        .O(\genblk1.drinktk_ind_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \genblk1.drinktk_ind_i_4 
       (.I0(\genblk1.drinktk_ind_i_13_n_0 ),
        .I1(op_start_IBUF),
        .I2(Reset_IBUF),
        .O(\genblk1.drinktk_ind_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAEAAAAAAAA)) 
    \genblk1.drinktk_ind_i_5 
       (.I0(\genblk1.drinktk_ind_i_14_n_0 ),
        .I1(\genblk1.charge_val[3]_i_8_n_0 ),
        .I2(\genblk1.drinktk_ind_i_15_n_0 ),
        .I3(cancel_flag_IBUF),
        .I4(\genblk1.drinktk_ind_i_16_n_0 ),
        .I5(\genblk1.drinktk_ind_i_17_n_0 ),
        .O(\genblk1.drinktk_ind_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \genblk1.drinktk_ind_i_6 
       (.I0(Reset_IBUF),
        .I1(op_start_IBUF),
        .O(\genblk1.drinktk_ind_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \genblk1.drinktk_ind_i_7 
       (.I0(\genblk1.hold_ind_i_12_n_0 ),
        .I1(\genblk1.hold_ind_i_11_n_0 ),
        .I2(\genblk1.drinktk_ind_i_18_n_0 ),
        .I3(\genblk1.hold_ind_i_10_n_0 ),
        .I4(\genblk1.drinktk_ind_i_19_n_0 ),
        .I5(\genblk1.hold_ind_i_8_n_0 ),
        .O(\genblk1.drinktk_ind_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h08000000FFFF0000)) 
    \genblk1.drinktk_ind_i_8 
       (.I0(buy_confirm_IBUF),
        .I1(goods_choose_IBUF),
        .I2(mealy_nextstate[0]),
        .I3(\genblk1.drinktk_ind_i_20_n_0 ),
        .I4(p_0_in86_in),
        .I5(\genblk1.drinktk_ind_i_11_n_0 ),
        .O(\genblk1.drinktk_ind_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \genblk1.drinktk_ind_i_9 
       (.I0(\genblk1.drinktk_ind_i_22_n_0 ),
        .I1(mealy_state[1]),
        .I2(mealy_state[0]),
        .I3(mealy_state[2]),
        .I4(\genblk1.drinktk_ind_i_11_n_0 ),
        .O(\genblk1.drinktk_ind_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.drinktk_ind_reg 
       (.C(clk_use_BUFG),
        .CE(\genblk1.hold_ind_i_1_n_0 ),
        .D(\genblk1.drinktk_ind_i_1_n_0 ),
        .Q(drinktk_ind_OBUF),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \genblk1.hold_ind_i_1 
       (.I0(\genblk1.hold_ind_i_3_n_0 ),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .I3(\genblk1.hold_ind_i_4_n_0 ),
        .O(\genblk1.hold_ind_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \genblk1.hold_ind_i_10 
       (.I0(\genblk1.hold_ind_i_19_n_0 ),
        .I1(\genblk1.hold_ind_i_20_n_0 ),
        .I2(\genblk1.drinktk_ind_i_6_n_0 ),
        .I3(\genblk1.count_reg [0]),
        .I4(\genblk1.hold_ind_i_21_n_0 ),
        .I5(\genblk1.hold_ind_i_22_n_0 ),
        .O(\genblk1.hold_ind_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF02FFFF)) 
    \genblk1.hold_ind_i_11 
       (.I0(\genblk1.count_reg [9]),
        .I1(\genblk1.count[12]_i_6_n_0 ),
        .I2(\genblk1.count_reg [10]),
        .I3(\genblk1.count[0]_i_14_n_0 ),
        .I4(\genblk1.count_reg [11]),
        .O(\genblk1.hold_ind_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFBF0FFFFFFFFFFFF)) 
    \genblk1.hold_ind_i_12 
       (.I0(\genblk1.drinktk_ind_i_13_n_0 ),
        .I1(\genblk1.count[4]_i_6_n_0 ),
        .I2(\genblk1.count_reg [5]),
        .I3(\genblk1.drinktk_ind_i_6_n_0 ),
        .I4(\genblk1.count_reg [4]),
        .I5(\genblk1.count_reg [3]),
        .O(\genblk1.hold_ind_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \genblk1.hold_ind_i_13 
       (.I0(\genblk1.count_reg [12]),
        .I1(\genblk1.count_reg [13]),
        .I2(\genblk1.drinktk_ind_i_6_n_0 ),
        .I3(\genblk1.count[0]_i_14_n_0 ),
        .I4(\genblk1.count_reg [7]),
        .I5(\genblk1.hold_ind_i_23_n_0 ),
        .O(\genblk1.hold_ind_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \genblk1.hold_ind_i_14 
       (.I0(mealy_state[2]),
        .I1(mealy_state[1]),
        .I2(mealy_state[0]),
        .O(\genblk1.hold_ind_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1.hold_ind_i_15 
       (.I0(mealy_state[1]),
        .I1(mealy_state[2]),
        .O(\genblk1.hold_ind_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \genblk1.hold_ind_i_16 
       (.I0(\genblk1.count_reg [15]),
        .I1(\genblk1.count_reg [16]),
        .I2(\genblk1.count_reg [19]),
        .I3(\genblk1.count_reg [18]),
        .O(\genblk1.hold_ind_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \genblk1.hold_ind_i_17 
       (.I0(\genblk1.count_reg [14]),
        .I1(\genblk1.count_reg [17]),
        .O(\genblk1.hold_ind_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \genblk1.hold_ind_i_18 
       (.I0(\genblk1.count_reg [17]),
        .I1(\genblk1.count_reg [16]),
        .I2(\genblk1.count_reg [20]),
        .I3(\genblk1.count_reg [19]),
        .O(\genblk1.hold_ind_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAA8FFFFFFFF)) 
    \genblk1.hold_ind_i_19 
       (.I0(\genblk1.count[0]_i_12_n_0 ),
        .I1(\genblk1.charge_ind_i_4_n_0 ),
        .I2(\genblk1.count[0]_i_13_n_0 ),
        .I3(\genblk1.charge_ind_i_3_n_0 ),
        .I4(\genblk1.drinktk_ind_i_6_n_0 ),
        .I5(\genblk1.count_reg [7]),
        .O(\genblk1.hold_ind_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \genblk1.hold_ind_i_2 
       (.I0(\genblk1.hold_ind_i_3_n_0 ),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .I3(\genblk1.hold_ind_i_4_n_0 ),
        .O(\genblk1.hold_ind_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7070707070707050)) 
    \genblk1.hold_ind_i_20 
       (.I0(\genblk1.drinktk_ind_i_6_n_0 ),
        .I1(\genblk1.drinktk_ind_i_4_n_0 ),
        .I2(\genblk1.count_reg [6]),
        .I3(\genblk1.charge_ind_i_4_n_0 ),
        .I4(\genblk1.count[0]_i_13_n_0 ),
        .I5(\genblk1.charge_ind_i_3_n_0 ),
        .O(\genblk1.hold_ind_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDDCD0)) 
    \genblk1.hold_ind_i_21 
       (.I0(\genblk1.count[0]_i_32_n_0 ),
        .I1(\genblk1.count_reg [0]),
        .I2(\genblk1.charge_ind_i_4_n_0 ),
        .I3(\genblk1.count[0]_i_13_n_0 ),
        .I4(\genblk1.charge_ind_i_3_n_0 ),
        .I5(\genblk1.drinktk_ind_i_4_n_0 ),
        .O(\genblk1.hold_ind_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5554000055570000)) 
    \genblk1.hold_ind_i_22 
       (.I0(\genblk1.count[0]_i_12_n_0 ),
        .I1(\genblk1.charge_ind_i_4_n_0 ),
        .I2(\genblk1.count[0]_i_13_n_0 ),
        .I3(\genblk1.charge_ind_i_3_n_0 ),
        .I4(\genblk1.count_reg [8]),
        .I5(\genblk1.drinktk_ind_i_6_n_0 ),
        .O(\genblk1.hold_ind_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \genblk1.hold_ind_i_23 
       (.I0(\genblk1.count_reg [11]),
        .I1(\genblk1.count_reg [10]),
        .I2(\genblk1.count_reg [8]),
        .O(\genblk1.hold_ind_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \genblk1.hold_ind_i_3 
       (.I0(\genblk1.charge_val[3]_i_10_n_0 ),
        .I1(\genblk1.charge_val[3]_i_8_n_0 ),
        .I2(\genblk1.hold_ind_i_5_n_0 ),
        .I3(\genblk1.hold_ind_i_6_n_0 ),
        .I4(\genblk1.hold_ind_i_7_n_0 ),
        .I5(\genblk1.charge_val[3]_i_9_n_0 ),
        .O(\genblk1.hold_ind_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \genblk1.hold_ind_i_4 
       (.I0(\genblk1.hold_ind_i_8_n_0 ),
        .I1(\genblk1.hold_ind_i_9_n_0 ),
        .I2(\genblk1.hold_ind_i_10_n_0 ),
        .I3(\genblk1.hold_ind_i_11_n_0 ),
        .I4(\genblk1.hold_ind_i_12_n_0 ),
        .I5(\genblk1.hold_ind_i_13_n_0 ),
        .O(\genblk1.hold_ind_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \genblk1.hold_ind_i_5 
       (.I0(\genblk1.drinktk_ind_i_11_n_0 ),
        .I1(mealy_state[0]),
        .I2(mealy_state[1]),
        .I3(mealy_state[2]),
        .O(\genblk1.hold_ind_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \genblk1.hold_ind_i_6 
       (.I0(coin_putin_IBUF),
        .I1(coin_val_IBUF),
        .I2(mealy_nextstate[0]),
        .I3(mealy_nextstate[2]),
        .I4(mealy_nextstate[1]),
        .I5(\genblk1.hold_ind_i_14_n_0 ),
        .O(\genblk1.hold_ind_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \genblk1.hold_ind_i_7 
       (.I0(mealy_nextstate[2]),
        .I1(mealy_nextstate[1]),
        .I2(\genblk1.hold_ind_i_15_n_0 ),
        .I3(mealy_state[0]),
        .I4(coin_putin_IBUF),
        .I5(mealy_nextstate[0]),
        .O(\genblk1.hold_ind_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1FFFFFFFFFF)) 
    \genblk1.hold_ind_i_8 
       (.I0(\genblk1.hold_ind_i_16_n_0 ),
        .I1(\genblk1.count[12]_i_6_n_0 ),
        .I2(\genblk1.count[0]_i_14_n_0 ),
        .I3(\genblk1.count_reg [13]),
        .I4(\genblk1.hold_ind_i_17_n_0 ),
        .I5(\genblk1.hold_ind_i_18_n_0 ),
        .O(\genblk1.hold_ind_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1.hold_ind_i_9 
       (.I0(\genblk1.count_reg [1]),
        .I1(\genblk1.count_reg [2]),
        .O(\genblk1.hold_ind_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.hold_ind_reg 
       (.C(clk_use_BUFG),
        .CE(\genblk1.hold_ind_i_1_n_0 ),
        .D(\genblk1.hold_ind_i_2_n_0 ),
        .Q(hold_ind_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \genblk1.judge_i_1 
       (.I0(\genblk1.hold_ind_i_4_n_0 ),
        .I1(Reset_IBUF),
        .I2(op_start_IBUF),
        .I3(\genblk1.judge_i_2_n_0 ),
        .O(\genblk1.judge_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \genblk1.judge_i_2 
       (.I0(\genblk1.charge_val[3]_i_6_n_0 ),
        .I1(\genblk1.judge_i_3_n_0 ),
        .I2(\genblk1.judge_reg_n_0 ),
        .I3(\genblk1.drinktk_ind_i_13_n_0 ),
        .I4(\genblk1.charge_val[3]_i_5_n_0 ),
        .I5(\genblk1.drinktk_ind_i_3_n_0 ),
        .O(\genblk1.judge_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \genblk1.judge_i_3 
       (.I0(\genblk1.wrong_dis_i_5_n_0 ),
        .I1(\genblk1.drinktk_ind_i_10_n_0 ),
        .I2(\genblk1.drinktk_ind_i_9_n_0 ),
        .O(\genblk1.judge_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.judge_reg 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(\genblk1.judge_i_1_n_0 ),
        .Q(\genblk1.judge_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.machine_on_reg 
       (.C(clk_use_BUFG),
        .CE(1'b1),
        .D(Reset_IBUF),
        .Q(machine_on_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000001011111111)) 
    \genblk1.wrong_dis_i_1 
       (.I0(\genblk1.drinktk_ind_i_4_n_0 ),
        .I1(\genblk1.wrong_dis_i_2_n_0 ),
        .I2(\genblk1.wrong_dis_i_3_n_0 ),
        .I3(\genblk1.wrong_dis_i_4_n_0 ),
        .I4(\genblk1.wrong_dis_i_5_n_0 ),
        .I5(\genblk1.wrong_dis_i_6_n_0 ),
        .O(\genblk1.wrong_dis_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \genblk1.wrong_dis_i_10 
       (.I0(mealy_nextstate[2]),
        .I1(mealy_nextstate[1]),
        .I2(\genblk1.wrong_dis_i_11_n_0 ),
        .I3(mealy_nextstate[0]),
        .I4(mealy_state[0]),
        .O(\genblk1.wrong_dis_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \genblk1.wrong_dis_i_11 
       (.I0(mealy_state[2]),
        .I1(coin_putin_IBUF),
        .I2(coin_val_IBUF),
        .I3(mealy_state[1]),
        .O(\genblk1.wrong_dis_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \genblk1.wrong_dis_i_12 
       (.I0(\genblk1.drinktk_ind_i_23_n_0 ),
        .I1(\genblk1.wrong_dis_i_17_n_0 ),
        .I2(mealy_nextstate[0]),
        .I3(mealy_state[0]),
        .I4(mealy_state[1]),
        .I5(mealy_state[2]),
        .O(\genblk1.wrong_dis_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \genblk1.wrong_dis_i_13 
       (.I0(\genblk1.drinktk_ind_i_23_n_0 ),
        .I1(mealy_state[1]),
        .I2(mealy_state[2]),
        .I3(buy_confirm_IBUF),
        .I4(mealy_state[0]),
        .I5(mealy_nextstate[0]),
        .O(\genblk1.wrong_dis_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \genblk1.wrong_dis_i_14 
       (.I0(\genblk1.drinktk_ind_i_20_n_0 ),
        .I1(mealy_nextstate[0]),
        .I2(coin_putin_IBUF),
        .I3(coin_val_IBUF),
        .I4(mealy_state[0]),
        .I5(\genblk1.charge_val[3]_i_19_n_0 ),
        .O(\genblk1.wrong_dis_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \genblk1.wrong_dis_i_15 
       (.I0(p_0_in70_in),
        .I1(mealy_nextstate[2]),
        .I2(mealy_nextstate[1]),
        .I3(mealy_nextstate[0]),
        .I4(coin_putin_IBUF),
        .O(\genblk1.wrong_dis_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \genblk1.wrong_dis_i_16 
       (.I0(\genblk1.drinktk_ind_i_20_n_0 ),
        .I1(coin_putin_IBUF),
        .I2(mealy_state[2]),
        .I3(mealy_state[1]),
        .I4(coin_val_IBUF),
        .I5(\genblk1.wrong_dis_i_18_n_0 ),
        .O(\genblk1.wrong_dis_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \genblk1.wrong_dis_i_17 
       (.I0(coin_val_IBUF),
        .I1(coin_putin_IBUF),
        .O(\genblk1.wrong_dis_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \genblk1.wrong_dis_i_18 
       (.I0(mealy_nextstate[0]),
        .I1(mealy_state[0]),
        .O(\genblk1.wrong_dis_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \genblk1.wrong_dis_i_2 
       (.I0(mealy_state[2]),
        .I1(mealy_state[1]),
        .I2(mealy_state[0]),
        .I3(\genblk1.drinktk_ind_i_11_n_0 ),
        .O(\genblk1.wrong_dis_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABABAAABAA)) 
    \genblk1.wrong_dis_i_3 
       (.I0(\genblk1.drinktk_ind_i_10_n_0 ),
        .I1(\genblk1.drinktk_ind_i_14_n_0 ),
        .I2(\genblk1.drinktk_ind_i_8_n_0 ),
        .I3(\genblk1.wrong_dis_i_7_n_0 ),
        .I4(\genblk1.wrong_dis_i_8_n_0 ),
        .I5(\genblk1.wrong_dis_i_9_n_0 ),
        .O(\genblk1.wrong_dis_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \genblk1.wrong_dis_i_4 
       (.I0(\genblk1.wrong_dis_i_10_n_0 ),
        .I1(\genblk1.drinktk_ind_i_9_n_0 ),
        .O(\genblk1.wrong_dis_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \genblk1.wrong_dis_i_5 
       (.I0(mealy_nextstate[1]),
        .I1(mealy_nextstate[2]),
        .I2(\genblk1.wrong_dis_i_11_n_0 ),
        .I3(mealy_state[0]),
        .I4(mealy_nextstate[0]),
        .O(\genblk1.wrong_dis_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \genblk1.wrong_dis_i_6 
       (.I0(\genblk1.wrong_dis_i_12_n_0 ),
        .I1(\genblk1.wrong_dis_i_10_n_0 ),
        .I2(\genblk1.wrong_dis_i_13_n_0 ),
        .O(\genblk1.wrong_dis_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \genblk1.wrong_dis_i_7 
       (.I0(mealy_nextstate[1]),
        .I1(mealy_nextstate[2]),
        .I2(mealy_nextstate[0]),
        .I3(coin_putin_IBUF),
        .I4(coin_val_IBUF),
        .I5(p_0_in86_in),
        .O(\genblk1.wrong_dis_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h44455555)) 
    \genblk1.wrong_dis_i_8 
       (.I0(\genblk1.wrong_dis_i_14_n_0 ),
        .I1(\genblk1.charge_val[3]_i_17_n_0 ),
        .I2(\genblk1.hold_ind_i_7_n_0 ),
        .I3(\genblk1.wrong_dis_i_15_n_0 ),
        .I4(\genblk1.charge_ind_i_7_n_0 ),
        .O(\genblk1.wrong_dis_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \genblk1.wrong_dis_i_9 
       (.I0(\genblk1.drinktk_ind_i_11_n_0 ),
        .I1(mealy_state[0]),
        .I2(mealy_state[2]),
        .I3(mealy_state[1]),
        .I4(\genblk1.wrong_dis_i_16_n_0 ),
        .O(\genblk1.wrong_dis_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1.wrong_dis_reg 
       (.C(clk_use_BUFG),
        .CE(\genblk1.hold_ind_i_1_n_0 ),
        .D(\genblk1.wrong_dis_i_1_n_0 ),
        .Q(wrong_dis_OBUF),
        .R(1'b0));
  IBUF goods_choose_IBUF_inst
       (.I(goods_choose),
        .O(goods_choose_IBUF));
  OBUF hold_ind_OBUF_inst
       (.I(hold_ind_OBUF),
        .O(hold_ind));
  OBUF \light_OBUF[0]_inst 
       (.I(light_OBUF[0]),
        .O(light[0]));
  OBUF \light_OBUF[1]_inst 
       (.I(light_OBUF[1]),
        .O(light[1]));
  OBUF \light_OBUF[2]_inst 
       (.I(light_OBUF[2]),
        .O(light[2]));
  OBUF \light_OBUF[3]_inst 
       (.I(light_OBUF[3]),
        .O(light[3]));
  OBUF \light_OBUF[4]_inst 
       (.I(light_OBUF[4]),
        .O(light[4]));
  OBUF \light_OBUF[5]_inst 
       (.I(1'b1),
        .O(light[5]));
  OBUF \light_OBUF[6]_inst 
       (.I(1'b1),
        .O(light[6]));
  OBUF \light_OBUF[7]_inst 
       (.I(1'b1),
        .O(light[7]));
  OBUF \light_part_OBUF[0]_inst 
       (.I(light_part_OBUF[0]),
        .O(light_part[0]));
  OBUF \light_part_OBUF[1]_inst 
       (.I(light_part_OBUF[1]),
        .O(light_part[1]));
  OBUF \light_part_OBUF[2]_inst 
       (.I(light_part_OBUF[2]),
        .O(light_part[2]));
  OBUF \light_part_OBUF[3]_inst 
       (.I(light_part_OBUF[3]),
        .O(light_part[3]));
  OBUF \light_part_OBUF[4]_inst 
       (.I(light_part_OBUF[4]),
        .O(light_part[4]));
  OBUF \light_part_OBUF[5]_inst 
       (.I(light_part_OBUF[5]),
        .O(light_part[5]));
  OBUF \light_part_OBUF[6]_inst 
       (.I(light_part_OBUF[6]),
        .O(light_part[6]));
  OBUF \light_part_OBUF[7]_inst 
       (.I(light_part_OBUF[7]),
        .O(light_part[7]));
  OBUF machine_on_OBUF_inst
       (.I(machine_on_OBUF),
        .O(machine_on));
  IBUF op_start_IBUF_inst
       (.I(op_start),
        .O(op_start_IBUF));
  change_HZ press
       (.clk(clk_IBUF_BUFG),
        .clk_use(clk_use));
  OBUF wrong_dis_OBUF_inst
       (.I(wrong_dis_OBUF),
        .O(wrong_dis));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
