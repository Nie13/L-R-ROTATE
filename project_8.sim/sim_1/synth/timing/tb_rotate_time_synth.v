// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Nov  8 00:53:22 2017
// Host        : l-THINK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/l/Desktop/6463ADVHDes/code/project_8/project_8.sim/sim_1/synth/timing/tb_rotate_time_synth.v
// Design      : rotate
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module rotate
   (clk,
    btnU,
    btnD,
    btnL,
    btnR,
    btnC,
    sw,
    led,
    an,
    dp,
    seg);
  input clk;
  input btnU;
  input btnD;
  input btnL;
  input btnR;
  input btnC;
  input [15:0]sw;
  output [15:0]led;
  output [3:0]an;
  output dp;
  output [6:0]seg;

  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire \an_sig[3]_i_2_n_0 ;
  wire btnC;
  wire btnC_IBUF;
  wire btnD;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire btnU;
  wire btnU_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \count[9]_i_2_n_0 ;
  wire [9:0]count_reg__0;
  wire dp;
  wire dp_OBUF;
  wire dp_i_10_n_0;
  wire dp_i_11_n_0;
  wire dp_i_12_n_0;
  wire dp_i_1_n_0;
  wire dp_i_2_n_0;
  wire dp_i_3_n_0;
  wire dp_i_4_n_0;
  wire dp_i_5_n_0;
  wire dp_i_6_n_0;
  wire dp_i_7_n_0;
  wire dp_i_8_n_0;
  wire dp_i_9_n_0;
  wire eqOp;
  wire [31:15]\initial ;
  wire \initial_reg_n_0_[10] ;
  wire \initial_reg_n_0_[11] ;
  wire \initial_reg_n_0_[12] ;
  wire \initial_reg_n_0_[13] ;
  wire \initial_reg_n_0_[14] ;
  wire \initial_reg_n_0_[15] ;
  wire \initial_reg_n_0_[20] ;
  wire \initial_reg_n_0_[21] ;
  wire \initial_reg_n_0_[22] ;
  wire \initial_reg_n_0_[23] ;
  wire \initial_reg_n_0_[24] ;
  wire \initial_reg_n_0_[25] ;
  wire \initial_reg_n_0_[26] ;
  wire \initial_reg_n_0_[27] ;
  wire \initial_reg_n_0_[28] ;
  wire \initial_reg_n_0_[29] ;
  wire \initial_reg_n_0_[30] ;
  wire \initial_reg_n_0_[31] ;
  wire \initial_reg_n_0_[4] ;
  wire \initial_reg_n_0_[5] ;
  wire \initial_reg_n_0_[6] ;
  wire \initial_reg_n_0_[7] ;
  wire \initial_reg_n_0_[8] ;
  wire \initial_reg_n_0_[9] ;
  wire inup;
  wire inup_i_1_n_0;
  wire lastdown;
  wire lastleft;
  wire lastright;
  wire lastup;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire outup;
  wire outup_i_1_n_0;
  wire p_0_in;
  wire [31:0]p_1_in;
  wire [9:0]plusOp;
  wire [31:0]result;
  wire result13_out;
  wire \result[15]_i_1_n_0 ;
  wire \result[31]_i_1_n_0 ;
  wire \result[31]_i_3_n_0 ;
  wire [6:0]seg;
  wire \seg[0]_i_10_n_0 ;
  wire \seg[0]_i_11_n_0 ;
  wire \seg[0]_i_12_n_0 ;
  wire \seg[0]_i_13_n_0 ;
  wire \seg[0]_i_1_n_0 ;
  wire \seg[0]_i_2_n_0 ;
  wire \seg[0]_i_3_n_0 ;
  wire \seg[0]_i_4_n_0 ;
  wire \seg[0]_i_5_n_0 ;
  wire \seg[0]_i_6_n_0 ;
  wire \seg[0]_i_7_n_0 ;
  wire \seg[0]_i_8_n_0 ;
  wire \seg[0]_i_9_n_0 ;
  wire \seg[1]_i_10_n_0 ;
  wire \seg[1]_i_11_n_0 ;
  wire \seg[1]_i_1_n_0 ;
  wire \seg[1]_i_2_n_0 ;
  wire \seg[1]_i_3_n_0 ;
  wire \seg[1]_i_4_n_0 ;
  wire \seg[1]_i_5_n_0 ;
  wire \seg[1]_i_6_n_0 ;
  wire \seg[1]_i_7_n_0 ;
  wire \seg[1]_i_8_n_0 ;
  wire \seg[1]_i_9_n_0 ;
  wire \seg[2]_i_10_n_0 ;
  wire \seg[2]_i_1_n_0 ;
  wire \seg[2]_i_2_n_0 ;
  wire \seg[2]_i_3_n_0 ;
  wire \seg[2]_i_4_n_0 ;
  wire \seg[2]_i_5_n_0 ;
  wire \seg[2]_i_6_n_0 ;
  wire \seg[2]_i_7_n_0 ;
  wire \seg[2]_i_8_n_0 ;
  wire \seg[2]_i_9_n_0 ;
  wire \seg[3]_i_10_n_0 ;
  wire \seg[3]_i_1_n_0 ;
  wire \seg[3]_i_2_n_0 ;
  wire \seg[3]_i_3_n_0 ;
  wire \seg[3]_i_4_n_0 ;
  wire \seg[3]_i_5_n_0 ;
  wire \seg[3]_i_6_n_0 ;
  wire \seg[3]_i_7_n_0 ;
  wire \seg[3]_i_8_n_0 ;
  wire \seg[3]_i_9_n_0 ;
  wire \seg[4]_i_10_n_0 ;
  wire \seg[4]_i_1_n_0 ;
  wire \seg[4]_i_2_n_0 ;
  wire \seg[4]_i_3_n_0 ;
  wire \seg[4]_i_4_n_0 ;
  wire \seg[4]_i_5_n_0 ;
  wire \seg[4]_i_6_n_0 ;
  wire \seg[4]_i_7_n_0 ;
  wire \seg[4]_i_8_n_0 ;
  wire \seg[4]_i_9_n_0 ;
  wire \seg[5]_i_10_n_0 ;
  wire \seg[5]_i_11_n_0 ;
  wire \seg[5]_i_1_n_0 ;
  wire \seg[5]_i_2_n_0 ;
  wire \seg[5]_i_3_n_0 ;
  wire \seg[5]_i_4_n_0 ;
  wire \seg[5]_i_5_n_0 ;
  wire \seg[5]_i_6_n_0 ;
  wire \seg[5]_i_7_n_0 ;
  wire \seg[5]_i_8_n_0 ;
  wire \seg[5]_i_9_n_0 ;
  wire \seg[6]_i_10_n_0 ;
  wire \seg[6]_i_11_n_0 ;
  wire \seg[6]_i_12_n_0 ;
  wire \seg[6]_i_1_n_0 ;
  wire \seg[6]_i_2_n_0 ;
  wire \seg[6]_i_3_n_0 ;
  wire \seg[6]_i_4_n_0 ;
  wire \seg[6]_i_5_n_0 ;
  wire \seg[6]_i_6_n_0 ;
  wire \seg[6]_i_7_n_0 ;
  wire \seg[6]_i_8_n_0 ;
  wire \seg[6]_i_9_n_0 ;
  wire [6:0]seg_OBUF;
  wire [7:0]sel0;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;

initial begin
 $sdf_annotate("tb_rotate_time_synth.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \an_sig[3]_i_1 
       (.I0(\an_sig[3]_i_2_n_0 ),
        .I1(count_reg__0[2]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[0]),
        .I4(count_reg__0[1]),
        .O(eqOp));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \an_sig[3]_i_2 
       (.I0(count_reg__0[4]),
        .I1(count_reg__0[5]),
        .I2(count_reg__0[6]),
        .I3(count_reg__0[7]),
        .I4(count_reg__0[9]),
        .I5(count_reg__0[8]),
        .O(\an_sig[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \an_sig_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .CLR(btnC_IBUF),
        .D(an_OBUF[3]),
        .Q(an_OBUF[0]));
  FDPE #(
    .INIT(1'b1)) 
    \an_sig_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(an_OBUF[0]),
        .PRE(btnC_IBUF),
        .Q(an_OBUF[1]));
  FDPE #(
    .INIT(1'b1)) 
    \an_sig_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(an_OBUF[1]),
        .PRE(btnC_IBUF),
        .Q(an_OBUF[2]));
  FDPE #(
    .INIT(1'b1)) 
    \an_sig_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(eqOp),
        .D(an_OBUF[2]),
        .PRE(btnC_IBUF),
        .Q(an_OBUF[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  IBUF btnD_IBUF_inst
       (.I(btnD),
        .O(btnD_IBUF));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  IBUF btnU_IBUF_inst
       (.I(btnU),
        .O(btnU_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[2]),
        .I4(count_reg__0[4]),
        .I5(count_reg__0[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[6]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(count_reg__0[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(count_reg__0[6]),
        .I2(count_reg__0[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[8]_i_1 
       (.I0(count_reg__0[6]),
        .I1(\count[9]_i_2_n_0 ),
        .I2(count_reg__0[7]),
        .I3(count_reg__0[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[9]_i_1 
       (.I0(count_reg__0[7]),
        .I1(\count[9]_i_2_n_0 ),
        .I2(count_reg__0[6]),
        .I3(count_reg__0[8]),
        .I4(count_reg__0[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[9]_i_2 
       (.I0(count_reg__0[5]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[0]),
        .I4(count_reg__0[2]),
        .I5(count_reg__0[4]),
        .O(\count[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[0]),
        .Q(count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[1]),
        .Q(count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[2]),
        .Q(count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[3]),
        .Q(count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[4]),
        .Q(count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[5]),
        .Q(count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[6]),
        .Q(count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[7]),
        .Q(count_reg__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[8]),
        .Q(count_reg__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btnC_IBUF),
        .D(plusOp[9]),
        .Q(count_reg__0[9]));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    dp_i_1
       (.I0(dp_i_2_n_0),
        .I1(dp_i_3_n_0),
        .I2(dp_i_4_n_0),
        .I3(dp_i_5_n_0),
        .I4(an_OBUF[1]),
        .I5(dp_i_6_n_0),
        .O(dp_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    dp_i_10
       (.I0(an_OBUF[3]),
        .I1(an_OBUF[2]),
        .O(dp_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    dp_i_11
       (.I0(\initial_reg_n_0_[22] ),
        .I1(\initial_reg_n_0_[21] ),
        .I2(\initial_reg_n_0_[23] ),
        .O(dp_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    dp_i_12
       (.I0(\initial_reg_n_0_[10] ),
        .I1(\initial_reg_n_0_[9] ),
        .I2(\initial_reg_n_0_[11] ),
        .O(dp_i_12_n_0));
  LUT6 #(
    .INIT(64'h000000002E2E2EEE)) 
    dp_i_2
       (.I0(dp_i_7_n_0),
        .I1(outup),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(dp_i_8_n_0),
        .O(dp_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000002E2E2EEE)) 
    dp_i_3
       (.I0(dp_i_9_n_0),
        .I1(outup),
        .I2(\initial_reg_n_0_[31] ),
        .I3(\initial_reg_n_0_[29] ),
        .I4(\initial_reg_n_0_[30] ),
        .I5(an_OBUF[3]),
        .O(dp_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h917F)) 
    dp_i_4
       (.I0(an_OBUF[2]),
        .I1(an_OBUF[3]),
        .I2(an_OBUF[1]),
        .I3(an_OBUF[0]),
        .O(dp_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFBBBFAAAABBBF)) 
    dp_i_5
       (.I0(dp_i_10_n_0),
        .I1(\initial_reg_n_0_[7] ),
        .I2(\initial_reg_n_0_[5] ),
        .I3(\initial_reg_n_0_[6] ),
        .I4(outup),
        .I5(dp_i_11_n_0),
        .O(dp_i_5_n_0));
  LUT6 #(
    .INIT(64'h000000002E2E2EEE)) 
    dp_i_6
       (.I0(dp_i_12_n_0),
        .I1(outup),
        .I2(\initial_reg_n_0_[27] ),
        .I3(\initial_reg_n_0_[25] ),
        .I4(\initial_reg_n_0_[26] ),
        .I5(an_OBUF[2]),
        .O(dp_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    dp_i_7
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .O(dp_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    dp_i_8
       (.I0(an_OBUF[2]),
        .I1(an_OBUF[3]),
        .I2(an_OBUF[1]),
        .O(dp_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    dp_i_9
       (.I0(\initial_reg_n_0_[14] ),
        .I1(\initial_reg_n_0_[13] ),
        .I2(\initial_reg_n_0_[15] ),
        .O(dp_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dp_reg
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(dp_i_1_n_0),
        .Q(dp_OBUF),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \initial[15]_i_1 
       (.I0(lastdown),
        .I1(btnD_IBUF),
        .I2(inup),
        .O(\initial [15]));
  LUT3 #(
    .INIT(8'h20)) 
    \initial[31]_i_1 
       (.I0(inup),
        .I1(lastdown),
        .I2(btnD_IBUF),
        .O(\initial [31]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[0]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[10]),
        .Q(\initial_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[11]),
        .Q(\initial_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[12]),
        .Q(\initial_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[13]),
        .Q(\initial_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[14]),
        .Q(\initial_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[15]),
        .Q(\initial_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[2]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[3]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[1]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[4]),
        .Q(\initial_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[5]),
        .Q(\initial_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[6]),
        .Q(\initial_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[7]),
        .Q(\initial_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[8]),
        .Q(\initial_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[9]),
        .Q(\initial_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[10]),
        .Q(\initial_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[11]),
        .Q(\initial_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[12]),
        .Q(\initial_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[13]),
        .Q(\initial_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[2]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[14]),
        .Q(\initial_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [31]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[15]),
        .Q(\initial_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[3]),
        .Q(sel0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[4]),
        .Q(\initial_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[5]),
        .Q(\initial_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[6]),
        .Q(\initial_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[7]),
        .Q(\initial_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[8]),
        .Q(\initial_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \initial_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\initial [15]),
        .CLR(btnC_IBUF),
        .D(sw_IBUF[9]),
        .Q(\initial_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'hFB04)) 
    inup_i_1
       (.I0(btnC_IBUF),
        .I1(btnD_IBUF),
        .I2(lastdown),
        .I3(inup),
        .O(inup_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inup_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(inup_i_1_n_0),
        .Q(inup),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lastdown_reg
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(btnD_IBUF),
        .Q(lastdown),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    lastleft_i_1
       (.I0(btnC_IBUF),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    lastleft_reg
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(btnL_IBUF),
        .Q(lastleft),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lastright_reg
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(btnR_IBUF),
        .Q(lastright),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lastup_reg
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(btnU_IBUF),
        .Q(lastup),
        .R(1'b0));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(result[16]),
        .I1(outup),
        .I2(result[0]),
        .O(led_OBUF[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[10]_inst_i_1 
       (.I0(result[26]),
        .I1(outup),
        .I2(result[10]),
        .O(led_OBUF[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[11]_inst_i_1 
       (.I0(result[27]),
        .I1(outup),
        .I2(result[11]),
        .O(led_OBUF[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[12]_inst_i_1 
       (.I0(result[28]),
        .I1(outup),
        .I2(result[12]),
        .O(led_OBUF[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[13]_inst_i_1 
       (.I0(result[29]),
        .I1(outup),
        .I2(result[13]),
        .O(led_OBUF[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[14]_inst_i_1 
       (.I0(result[30]),
        .I1(outup),
        .I2(result[14]),
        .O(led_OBUF[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[15]_inst_i_1 
       (.I0(result[31]),
        .I1(outup),
        .I2(result[15]),
        .O(led_OBUF[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(result[17]),
        .I1(outup),
        .I2(result[1]),
        .O(led_OBUF[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(result[18]),
        .I1(outup),
        .I2(result[2]),
        .O(led_OBUF[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(result[19]),
        .I1(outup),
        .I2(result[3]),
        .O(led_OBUF[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(result[20]),
        .I1(outup),
        .I2(result[4]),
        .O(led_OBUF[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(result[21]),
        .I1(outup),
        .I2(result[5]),
        .O(led_OBUF[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(result[22]),
        .I1(outup),
        .I2(result[6]),
        .O(led_OBUF[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[7]_inst_i_1 
       (.I0(result[23]),
        .I1(outup),
        .I2(result[7]),
        .O(led_OBUF[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[8]_inst_i_1 
       (.I0(result[24]),
        .I1(outup),
        .I2(result[8]),
        .O(led_OBUF[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[9]_inst_i_1 
       (.I0(result[25]),
        .I1(outup),
        .I2(result[9]),
        .O(led_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFB04)) 
    outup_i_1
       (.I0(lastup),
        .I1(btnU_IBUF),
        .I2(btnC_IBUF),
        .I3(outup),
        .O(outup_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    outup_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(outup_i_1_n_0),
        .Q(outup),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[0]_i_1 
       (.I0(sw_IBUF[0]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[31]),
        .I4(result[1]),
        .I5(result13_out),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[10]_i_1 
       (.I0(sw_IBUF[10]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[9]),
        .I4(result[11]),
        .I5(result13_out),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[11]_i_1 
       (.I0(sw_IBUF[11]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[10]),
        .I4(result[12]),
        .I5(result13_out),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[12]_i_1 
       (.I0(sw_IBUF[12]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[11]),
        .I4(result[13]),
        .I5(result13_out),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[13]_i_1 
       (.I0(sw_IBUF[13]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[12]),
        .I4(result[14]),
        .I5(result13_out),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[14]_i_1 
       (.I0(sw_IBUF[14]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[13]),
        .I4(result[15]),
        .I5(result13_out),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'h0000AABA)) 
    \result[15]_i_1 
       (.I0(\result[31]_i_3_n_0 ),
        .I1(lastdown),
        .I2(btnD_IBUF),
        .I3(inup),
        .I4(btnC_IBUF),
        .O(\result[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[15]_i_2 
       (.I0(sw_IBUF[15]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[14]),
        .I4(result[16]),
        .I5(result13_out),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[16]_i_1 
       (.I0(sw_IBUF[0]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[15]),
        .I4(result[17]),
        .I5(result13_out),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[17]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[16]),
        .I4(result[18]),
        .I5(result13_out),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[18]_i_1 
       (.I0(sw_IBUF[2]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[17]),
        .I4(result[19]),
        .I5(result13_out),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[19]_i_1 
       (.I0(sw_IBUF[3]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[18]),
        .I4(result[20]),
        .I5(result13_out),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[1]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[0]),
        .I4(result[2]),
        .I5(result13_out),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[20]_i_1 
       (.I0(sw_IBUF[4]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[19]),
        .I4(result[21]),
        .I5(result13_out),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[21]_i_1 
       (.I0(sw_IBUF[5]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[20]),
        .I4(result[22]),
        .I5(result13_out),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[22]_i_1 
       (.I0(sw_IBUF[6]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[21]),
        .I4(result[23]),
        .I5(result13_out),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[23]_i_1 
       (.I0(sw_IBUF[7]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[22]),
        .I4(result[24]),
        .I5(result13_out),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[24]_i_1 
       (.I0(sw_IBUF[8]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[23]),
        .I4(result[25]),
        .I5(result13_out),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[25]_i_1 
       (.I0(sw_IBUF[9]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[24]),
        .I4(result[26]),
        .I5(result13_out),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[26]_i_1 
       (.I0(sw_IBUF[10]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[25]),
        .I4(result[27]),
        .I5(result13_out),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[27]_i_1 
       (.I0(sw_IBUF[11]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[26]),
        .I4(result[28]),
        .I5(result13_out),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[28]_i_1 
       (.I0(sw_IBUF[12]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[27]),
        .I4(result[29]),
        .I5(result13_out),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[29]_i_1 
       (.I0(sw_IBUF[13]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[28]),
        .I4(result[30]),
        .I5(result13_out),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[2]_i_1 
       (.I0(sw_IBUF[2]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[1]),
        .I4(result[3]),
        .I5(result13_out),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[30]_i_1 
       (.I0(sw_IBUF[14]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[29]),
        .I4(result[31]),
        .I5(result13_out),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'h0000AEAA)) 
    \result[31]_i_1 
       (.I0(\result[31]_i_3_n_0 ),
        .I1(inup),
        .I2(lastdown),
        .I3(btnD_IBUF),
        .I4(btnC_IBUF),
        .O(\result[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[31]_i_2 
       (.I0(sw_IBUF[15]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[30]),
        .I4(result[0]),
        .I5(result13_out),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \result[31]_i_3 
       (.I0(lastright),
        .I1(btnR_IBUF),
        .I2(lastleft),
        .I3(btnL_IBUF),
        .O(\result[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result[31]_i_4 
       (.I0(btnR_IBUF),
        .I1(lastright),
        .O(result13_out));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[3]_i_1 
       (.I0(sw_IBUF[3]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[2]),
        .I4(result[4]),
        .I5(result13_out),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[4]_i_1 
       (.I0(sw_IBUF[4]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[3]),
        .I4(result[5]),
        .I5(result13_out),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[5]_i_1 
       (.I0(sw_IBUF[5]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[4]),
        .I4(result[6]),
        .I5(result13_out),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[6]_i_1 
       (.I0(sw_IBUF[6]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[5]),
        .I4(result[7]),
        .I5(result13_out),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[7]_i_1 
       (.I0(sw_IBUF[7]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[6]),
        .I4(result[8]),
        .I5(result13_out),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[8]_i_1 
       (.I0(sw_IBUF[8]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[7]),
        .I4(result[9]),
        .I5(result13_out),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFF0000AEA2AEA2)) 
    \result[9]_i_1 
       (.I0(sw_IBUF[9]),
        .I1(btnL_IBUF),
        .I2(lastleft),
        .I3(result[8]),
        .I4(result[10]),
        .I5(result13_out),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(result[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(result[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(result[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(result[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(result[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(result[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(result[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(result[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(result[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(result[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(result[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(result[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(result[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(result[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(result[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(result[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(result[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(result[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(result[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(result[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(result[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(result[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(result[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(result[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(result[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(result[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(result[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(result[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(result[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(result[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(result[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\result[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(result[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \seg[0]_i_1 
       (.I0(\seg[0]_i_2_n_0 ),
        .I1(\seg[0]_i_3_n_0 ),
        .I2(dp_i_4_n_0),
        .I3(\seg[0]_i_4_n_0 ),
        .I4(an_OBUF[1]),
        .I5(\seg[0]_i_5_n_0 ),
        .O(\seg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \seg[0]_i_10 
       (.I0(\initial_reg_n_0_[7] ),
        .I1(\initial_reg_n_0_[5] ),
        .O(\seg[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000028)) 
    \seg[0]_i_11 
       (.I0(outup),
        .I1(\initial_reg_n_0_[20] ),
        .I2(\initial_reg_n_0_[22] ),
        .I3(\initial_reg_n_0_[21] ),
        .I4(\initial_reg_n_0_[23] ),
        .O(\seg[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000014)) 
    \seg[0]_i_12 
       (.I0(outup),
        .I1(\initial_reg_n_0_[8] ),
        .I2(\initial_reg_n_0_[10] ),
        .I3(\initial_reg_n_0_[9] ),
        .I4(\initial_reg_n_0_[11] ),
        .O(\seg[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \seg[0]_i_13 
       (.I0(\initial_reg_n_0_[27] ),
        .I1(\initial_reg_n_0_[25] ),
        .O(\seg[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAEEA)) 
    \seg[0]_i_2 
       (.I0(\seg[0]_i_6_n_0 ),
        .I1(outup),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\seg[0]_i_7_n_0 ),
        .I5(dp_i_8_n_0),
        .O(\seg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAEEA)) 
    \seg[0]_i_3 
       (.I0(\seg[0]_i_8_n_0 ),
        .I1(outup),
        .I2(\initial_reg_n_0_[28] ),
        .I3(\initial_reg_n_0_[30] ),
        .I4(\seg[0]_i_9_n_0 ),
        .I5(an_OBUF[3]),
        .O(\seg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAABBA)) 
    \seg[0]_i_4 
       (.I0(dp_i_10_n_0),
        .I1(outup),
        .I2(\initial_reg_n_0_[4] ),
        .I3(\initial_reg_n_0_[6] ),
        .I4(\seg[0]_i_10_n_0 ),
        .I5(\seg[0]_i_11_n_0 ),
        .O(\seg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAEEA)) 
    \seg[0]_i_5 
       (.I0(\seg[0]_i_12_n_0 ),
        .I1(outup),
        .I2(\initial_reg_n_0_[24] ),
        .I3(\initial_reg_n_0_[26] ),
        .I4(\seg[0]_i_13_n_0 ),
        .I5(an_OBUF[2]),
        .O(\seg[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000014)) 
    \seg[0]_i_6 
       (.I0(outup),
        .I1(sel0[4]),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .I4(sel0[7]),
        .O(\seg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \seg[0]_i_7 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .O(\seg[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000014)) 
    \seg[0]_i_8 
       (.I0(outup),
        .I1(\initial_reg_n_0_[12] ),
        .I2(\initial_reg_n_0_[14] ),
        .I3(\initial_reg_n_0_[13] ),
        .I4(\initial_reg_n_0_[15] ),
        .O(\seg[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \seg[0]_i_9 
       (.I0(\initial_reg_n_0_[31] ),
        .I1(\initial_reg_n_0_[29] ),
        .O(\seg[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \seg[1]_i_1 
       (.I0(\seg[1]_i_2_n_0 ),
        .I1(\seg[1]_i_3_n_0 ),
        .I2(\seg[1]_i_4_n_0 ),
        .I3(\seg[1]_i_5_n_0 ),
        .I4(dp_i_4_n_0),
        .I5(\seg[1]_i_6_n_0 ),
        .O(\seg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg[1]_i_10 
       (.I0(outup),
        .I1(an_OBUF[2]),
        .O(\seg[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0800000808080800)) 
    \seg[1]_i_11 
       (.I0(\initial_reg_n_0_[30] ),
        .I1(outup),
        .I2(an_OBUF[3]),
        .I3(\initial_reg_n_0_[31] ),
        .I4(\initial_reg_n_0_[29] ),
        .I5(\initial_reg_n_0_[28] ),
        .O(\seg[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80088880)) 
    \seg[1]_i_2 
       (.I0(sel0[6]),
        .I1(\seg[6]_i_12_n_0 ),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\seg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABBB)) 
    \seg[1]_i_3 
       (.I0(\seg[1]_i_7_n_0 ),
        .I1(an_OBUF[1]),
        .I2(an_OBUF[3]),
        .I3(an_OBUF[2]),
        .I4(\seg[1]_i_8_n_0 ),
        .I5(\seg[1]_i_9_n_0 ),
        .O(\seg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80088880)) 
    \seg[1]_i_4 
       (.I0(sel0[2]),
        .I1(\seg[6]_i_9_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\seg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0200000202020200)) 
    \seg[1]_i_5 
       (.I0(\initial_reg_n_0_[14] ),
        .I1(an_OBUF[3]),
        .I2(outup),
        .I3(\initial_reg_n_0_[15] ),
        .I4(\initial_reg_n_0_[13] ),
        .I5(\initial_reg_n_0_[12] ),
        .O(\seg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD6000000)) 
    \seg[1]_i_6 
       (.I0(\initial_reg_n_0_[24] ),
        .I1(\initial_reg_n_0_[25] ),
        .I2(\initial_reg_n_0_[27] ),
        .I3(\seg[1]_i_10_n_0 ),
        .I4(\initial_reg_n_0_[26] ),
        .I5(\seg[1]_i_11_n_0 ),
        .O(\seg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0200000202020200)) 
    \seg[1]_i_7 
       (.I0(\initial_reg_n_0_[10] ),
        .I1(an_OBUF[2]),
        .I2(outup),
        .I3(\initial_reg_n_0_[11] ),
        .I4(\initial_reg_n_0_[9] ),
        .I5(\initial_reg_n_0_[8] ),
        .O(\seg[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h40044440)) 
    \seg[1]_i_8 
       (.I0(outup),
        .I1(\initial_reg_n_0_[6] ),
        .I2(\initial_reg_n_0_[7] ),
        .I3(\initial_reg_n_0_[5] ),
        .I4(\initial_reg_n_0_[4] ),
        .O(\seg[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80088880)) 
    \seg[1]_i_9 
       (.I0(\initial_reg_n_0_[22] ),
        .I1(outup),
        .I2(\initial_reg_n_0_[23] ),
        .I3(\initial_reg_n_0_[21] ),
        .I4(\initial_reg_n_0_[20] ),
        .O(\seg[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \seg[2]_i_1 
       (.I0(\seg[2]_i_2_n_0 ),
        .I1(\seg[2]_i_3_n_0 ),
        .I2(\seg[2]_i_4_n_0 ),
        .I3(dp_i_4_n_0),
        .I4(\seg[2]_i_5_n_0 ),
        .O(\seg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000400400004000)) 
    \seg[2]_i_10 
       (.I0(an_OBUF[3]),
        .I1(outup),
        .I2(\initial_reg_n_0_[31] ),
        .I3(\initial_reg_n_0_[30] ),
        .I4(\initial_reg_n_0_[28] ),
        .I5(\initial_reg_n_0_[29] ),
        .O(\seg[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABBB)) 
    \seg[2]_i_2 
       (.I0(\seg[2]_i_6_n_0 ),
        .I1(an_OBUF[1]),
        .I2(an_OBUF[3]),
        .I3(an_OBUF[2]),
        .I4(\seg[2]_i_7_n_0 ),
        .I5(\seg[2]_i_8_n_0 ),
        .O(\seg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0020000)) 
    \seg[2]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\seg[6]_i_9_n_0 ),
        .I5(\seg[2]_i_9_n_0 ),
        .O(\seg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000100100001000)) 
    \seg[2]_i_4 
       (.I0(outup),
        .I1(an_OBUF[3]),
        .I2(\initial_reg_n_0_[15] ),
        .I3(\initial_reg_n_0_[14] ),
        .I4(\initial_reg_n_0_[12] ),
        .I5(\initial_reg_n_0_[13] ),
        .O(\seg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAAAEAAAAAAAA)) 
    \seg[2]_i_5 
       (.I0(\seg[2]_i_10_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .I5(\seg[6]_i_12_n_0 ),
        .O(\seg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000100100001000)) 
    \seg[2]_i_6 
       (.I0(outup),
        .I1(an_OBUF[2]),
        .I2(\initial_reg_n_0_[11] ),
        .I3(\initial_reg_n_0_[10] ),
        .I4(\initial_reg_n_0_[8] ),
        .I5(\initial_reg_n_0_[9] ),
        .O(\seg[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00008908)) 
    \seg[2]_i_7 
       (.I0(\initial_reg_n_0_[7] ),
        .I1(\initial_reg_n_0_[6] ),
        .I2(\initial_reg_n_0_[4] ),
        .I3(\initial_reg_n_0_[5] ),
        .I4(outup),
        .O(\seg[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h89080000)) 
    \seg[2]_i_8 
       (.I0(\initial_reg_n_0_[23] ),
        .I1(\initial_reg_n_0_[22] ),
        .I2(\initial_reg_n_0_[20] ),
        .I3(\initial_reg_n_0_[21] ),
        .I4(outup),
        .O(\seg[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4000400400004000)) 
    \seg[2]_i_9 
       (.I0(an_OBUF[2]),
        .I1(outup),
        .I2(\initial_reg_n_0_[27] ),
        .I3(\initial_reg_n_0_[26] ),
        .I4(\initial_reg_n_0_[24] ),
        .I5(\initial_reg_n_0_[25] ),
        .O(\seg[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \seg[3]_i_1 
       (.I0(\seg[3]_i_2_n_0 ),
        .I1(\seg[3]_i_3_n_0 ),
        .I2(\seg[3]_i_4_n_0 ),
        .I3(dp_i_4_n_0),
        .I4(\seg[3]_i_5_n_0 ),
        .O(\seg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000040040040040)) 
    \seg[3]_i_10 
       (.I0(an_OBUF[3]),
        .I1(outup),
        .I2(\initial_reg_n_0_[30] ),
        .I3(\initial_reg_n_0_[29] ),
        .I4(\initial_reg_n_0_[28] ),
        .I5(\initial_reg_n_0_[31] ),
        .O(\seg[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABBB)) 
    \seg[3]_i_2 
       (.I0(\seg[3]_i_6_n_0 ),
        .I1(an_OBUF[1]),
        .I2(an_OBUF[3]),
        .I3(an_OBUF[2]),
        .I4(\seg[3]_i_7_n_0 ),
        .I5(\seg[3]_i_8_n_0 ),
        .O(\seg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC1240000)) 
    \seg[3]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\seg[6]_i_9_n_0 ),
        .I5(\seg[3]_i_9_n_0 ),
        .O(\seg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000010010010010)) 
    \seg[3]_i_4 
       (.I0(outup),
        .I1(an_OBUF[3]),
        .I2(\initial_reg_n_0_[14] ),
        .I3(\initial_reg_n_0_[13] ),
        .I4(\initial_reg_n_0_[12] ),
        .I5(\initial_reg_n_0_[15] ),
        .O(\seg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFAABAEBAAAAAAAAA)) 
    \seg[3]_i_5 
       (.I0(\seg[3]_i_10_n_0 ),
        .I1(sel0[7]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(sel0[6]),
        .I5(\seg[6]_i_12_n_0 ),
        .O(\seg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000010010010010)) 
    \seg[3]_i_6 
       (.I0(outup),
        .I1(an_OBUF[2]),
        .I2(\initial_reg_n_0_[10] ),
        .I3(\initial_reg_n_0_[9] ),
        .I4(\initial_reg_n_0_[8] ),
        .I5(\initial_reg_n_0_[11] ),
        .O(\seg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008492)) 
    \seg[3]_i_7 
       (.I0(\initial_reg_n_0_[6] ),
        .I1(\initial_reg_n_0_[5] ),
        .I2(\initial_reg_n_0_[4] ),
        .I3(\initial_reg_n_0_[7] ),
        .I4(outup),
        .O(\seg[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h84920000)) 
    \seg[3]_i_8 
       (.I0(\initial_reg_n_0_[22] ),
        .I1(\initial_reg_n_0_[21] ),
        .I2(\initial_reg_n_0_[20] ),
        .I3(\initial_reg_n_0_[23] ),
        .I4(outup),
        .O(\seg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4000040040040040)) 
    \seg[3]_i_9 
       (.I0(an_OBUF[2]),
        .I1(outup),
        .I2(\initial_reg_n_0_[26] ),
        .I3(\initial_reg_n_0_[25] ),
        .I4(\initial_reg_n_0_[24] ),
        .I5(\initial_reg_n_0_[27] ),
        .O(\seg[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \seg[4]_i_1 
       (.I0(\seg[4]_i_2_n_0 ),
        .I1(\seg[4]_i_3_n_0 ),
        .I2(\seg[4]_i_4_n_0 ),
        .I3(dp_i_4_n_0),
        .I4(\seg[4]_i_5_n_0 ),
        .O(\seg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0404044400040000)) 
    \seg[4]_i_10 
       (.I0(an_OBUF[3]),
        .I1(outup),
        .I2(\initial_reg_n_0_[31] ),
        .I3(\initial_reg_n_0_[29] ),
        .I4(\initial_reg_n_0_[30] ),
        .I5(\initial_reg_n_0_[28] ),
        .O(\seg[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABBB)) 
    \seg[4]_i_2 
       (.I0(\seg[4]_i_6_n_0 ),
        .I1(an_OBUF[1]),
        .I2(an_OBUF[3]),
        .I3(an_OBUF[2]),
        .I4(\seg[4]_i_7_n_0 ),
        .I5(\seg[4]_i_8_n_0 ),
        .O(\seg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02AE0000)) 
    \seg[4]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\seg[6]_i_9_n_0 ),
        .I5(\seg[4]_i_9_n_0 ),
        .O(\seg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101011100010000)) 
    \seg[4]_i_4 
       (.I0(outup),
        .I1(an_OBUF[3]),
        .I2(\initial_reg_n_0_[15] ),
        .I3(\initial_reg_n_0_[13] ),
        .I4(\initial_reg_n_0_[14] ),
        .I5(\initial_reg_n_0_[12] ),
        .O(\seg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEEEFEAAAAAAAA)) 
    \seg[4]_i_5 
       (.I0(\seg[4]_i_10_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .I4(sel0[7]),
        .I5(\seg[6]_i_12_n_0 ),
        .O(\seg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0101011100010000)) 
    \seg[4]_i_6 
       (.I0(outup),
        .I1(an_OBUF[2]),
        .I2(\initial_reg_n_0_[11] ),
        .I3(\initial_reg_n_0_[9] ),
        .I4(\initial_reg_n_0_[10] ),
        .I5(\initial_reg_n_0_[8] ),
        .O(\seg[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00005710)) 
    \seg[4]_i_7 
       (.I0(\initial_reg_n_0_[7] ),
        .I1(\initial_reg_n_0_[5] ),
        .I2(\initial_reg_n_0_[6] ),
        .I3(\initial_reg_n_0_[4] ),
        .I4(outup),
        .O(\seg[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h57100000)) 
    \seg[4]_i_8 
       (.I0(\initial_reg_n_0_[23] ),
        .I1(\initial_reg_n_0_[21] ),
        .I2(\initial_reg_n_0_[22] ),
        .I3(\initial_reg_n_0_[20] ),
        .I4(outup),
        .O(\seg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0404044400040000)) 
    \seg[4]_i_9 
       (.I0(an_OBUF[2]),
        .I1(outup),
        .I2(\initial_reg_n_0_[27] ),
        .I3(\initial_reg_n_0_[25] ),
        .I4(\initial_reg_n_0_[26] ),
        .I5(\initial_reg_n_0_[24] ),
        .O(\seg[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \seg[5]_i_1 
       (.I0(\seg[5]_i_2_n_0 ),
        .I1(\seg[5]_i_3_n_0 ),
        .I2(\seg[5]_i_4_n_0 ),
        .I3(\seg[5]_i_5_n_0 ),
        .I4(\seg[5]_i_6_n_0 ),
        .I5(\seg[5]_i_7_n_0 ),
        .O(\seg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h44040400)) 
    \seg[5]_i_10 
       (.I0(\initial_reg_n_0_[23] ),
        .I1(outup),
        .I2(\initial_reg_n_0_[22] ),
        .I3(\initial_reg_n_0_[21] ),
        .I4(\initial_reg_n_0_[20] ),
        .O(\seg[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg[5]_i_11 
       (.I0(an_OBUF[3]),
        .I1(outup),
        .O(\seg[5]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44040400)) 
    \seg[5]_i_2 
       (.I0(sel0[7]),
        .I1(\seg[6]_i_12_n_0 ),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\seg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABBB)) 
    \seg[5]_i_3 
       (.I0(\seg[5]_i_8_n_0 ),
        .I1(an_OBUF[1]),
        .I2(an_OBUF[3]),
        .I3(an_OBUF[2]),
        .I4(\seg[5]_i_9_n_0 ),
        .I5(\seg[5]_i_10_n_0 ),
        .O(\seg[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h44040400)) 
    \seg[5]_i_4 
       (.I0(sel0[3]),
        .I1(\seg[6]_i_9_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\seg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0404000400040000)) 
    \seg[5]_i_5 
       (.I0(\initial_reg_n_0_[27] ),
        .I1(outup),
        .I2(an_OBUF[2]),
        .I3(\initial_reg_n_0_[26] ),
        .I4(\initial_reg_n_0_[25] ),
        .I5(\initial_reg_n_0_[24] ),
        .O(\seg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0404000400040000)) 
    \seg[5]_i_6 
       (.I0(\initial_reg_n_0_[31] ),
        .I1(outup),
        .I2(an_OBUF[3]),
        .I3(\initial_reg_n_0_[30] ),
        .I4(\initial_reg_n_0_[29] ),
        .I5(\initial_reg_n_0_[28] ),
        .O(\seg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008E00)) 
    \seg[5]_i_7 
       (.I0(\initial_reg_n_0_[12] ),
        .I1(\initial_reg_n_0_[13] ),
        .I2(\initial_reg_n_0_[14] ),
        .I3(\seg[5]_i_11_n_0 ),
        .I4(\initial_reg_n_0_[15] ),
        .I5(dp_i_4_n_0),
        .O(\seg[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0101000100010000)) 
    \seg[5]_i_8 
       (.I0(\initial_reg_n_0_[11] ),
        .I1(an_OBUF[2]),
        .I2(outup),
        .I3(\initial_reg_n_0_[10] ),
        .I4(\initial_reg_n_0_[9] ),
        .I5(\initial_reg_n_0_[8] ),
        .O(\seg[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h11010100)) 
    \seg[5]_i_9 
       (.I0(\initial_reg_n_0_[7] ),
        .I1(outup),
        .I2(\initial_reg_n_0_[6] ),
        .I3(\initial_reg_n_0_[5] ),
        .I4(\initial_reg_n_0_[4] ),
        .O(\seg[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \seg[6]_i_1 
       (.I0(\seg[6]_i_2_n_0 ),
        .I1(\seg[6]_i_3_n_0 ),
        .I2(\seg[6]_i_4_n_0 ),
        .I3(dp_i_4_n_0),
        .I4(\seg[6]_i_5_n_0 ),
        .O(\seg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000040044004)) 
    \seg[6]_i_10 
       (.I0(an_OBUF[2]),
        .I1(outup),
        .I2(\initial_reg_n_0_[27] ),
        .I3(\initial_reg_n_0_[26] ),
        .I4(\initial_reg_n_0_[24] ),
        .I5(\initial_reg_n_0_[25] ),
        .O(\seg[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0400000040044004)) 
    \seg[6]_i_11 
       (.I0(an_OBUF[3]),
        .I1(outup),
        .I2(\initial_reg_n_0_[31] ),
        .I3(\initial_reg_n_0_[30] ),
        .I4(\initial_reg_n_0_[28] ),
        .I5(\initial_reg_n_0_[29] ),
        .O(\seg[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \seg[6]_i_12 
       (.I0(an_OBUF[1]),
        .I1(an_OBUF[3]),
        .I2(an_OBUF[2]),
        .I3(outup),
        .O(\seg[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABBB)) 
    \seg[6]_i_2 
       (.I0(\seg[6]_i_6_n_0 ),
        .I1(an_OBUF[1]),
        .I2(an_OBUF[3]),
        .I3(an_OBUF[2]),
        .I4(\seg[6]_i_7_n_0 ),
        .I5(\seg[6]_i_8_n_0 ),
        .O(\seg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF50850000)) 
    \seg[6]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\seg[6]_i_9_n_0 ),
        .I5(\seg[6]_i_10_n_0 ),
        .O(\seg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100000010011001)) 
    \seg[6]_i_4 
       (.I0(outup),
        .I1(an_OBUF[3]),
        .I2(\initial_reg_n_0_[15] ),
        .I3(\initial_reg_n_0_[14] ),
        .I4(\initial_reg_n_0_[12] ),
        .I5(\initial_reg_n_0_[13] ),
        .O(\seg[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAEABBAAAAAAAA)) 
    \seg[6]_i_5 
       (.I0(\seg[6]_i_11_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .I5(\seg[6]_i_12_n_0 ),
        .O(\seg[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100000010011001)) 
    \seg[6]_i_6 
       (.I0(outup),
        .I1(an_OBUF[2]),
        .I2(\initial_reg_n_0_[11] ),
        .I3(\initial_reg_n_0_[10] ),
        .I4(\initial_reg_n_0_[8] ),
        .I5(\initial_reg_n_0_[9] ),
        .O(\seg[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00004099)) 
    \seg[6]_i_7 
       (.I0(\initial_reg_n_0_[7] ),
        .I1(\initial_reg_n_0_[6] ),
        .I2(\initial_reg_n_0_[4] ),
        .I3(\initial_reg_n_0_[5] ),
        .I4(outup),
        .O(\seg[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h20008282)) 
    \seg[6]_i_8 
       (.I0(outup),
        .I1(\initial_reg_n_0_[23] ),
        .I2(\initial_reg_n_0_[22] ),
        .I3(\initial_reg_n_0_[20] ),
        .I4(\initial_reg_n_0_[21] ),
        .O(\seg[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \seg[6]_i_9 
       (.I0(outup),
        .I1(an_OBUF[1]),
        .I2(an_OBUF[3]),
        .I3(an_OBUF[2]),
        .O(\seg[6]_i_9_n_0 ));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  FDPE #(
    .INIT(1'b1)) 
    \seg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg[0]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(seg_OBUF[0]));
  FDPE #(
    .INIT(1'b1)) 
    \seg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg[1]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(seg_OBUF[1]));
  FDPE #(
    .INIT(1'b1)) 
    \seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg[2]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(seg_OBUF[2]));
  FDPE #(
    .INIT(1'b1)) 
    \seg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg[3]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(seg_OBUF[3]));
  FDPE #(
    .INIT(1'b1)) 
    \seg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg[4]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(seg_OBUF[4]));
  FDPE #(
    .INIT(1'b1)) 
    \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg[5]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(seg_OBUF[5]));
  FDPE #(
    .INIT(1'b1)) 
    \seg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\seg[6]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(seg_OBUF[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
