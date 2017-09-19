// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Tue Oct 18 17:28:50 2016
// Host        : gabriel-Inspiron-5558 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/gabriel/PG/AlgoritmoCorrelacion/AlgoritmoCorrelacion.sim/sim_1/synth/func/tb_AlgoritmoCorrelacion_func_synth.v
// Design      : AlgoritmoCorrelacion
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* OSF = "8" *) (* SAMPLES = "2" *) (* n = "3" *) 
(* NotValidForBitStream *)
module AlgoritmoCorrelacion
   (DataIn1,
    DataIn2,
    Reset,
    P,
    Enable,
    DataOut);
  input [15:0]DataIn1;
  input [15:0]DataIn2;
  input Reset;
  input P;
  input Enable;
  output DataOut;

  wire [15:0]DataIn1;
  wire [15:0]DataIn1_IBUF;
  wire [15:0]DataIn2;
  wire [15:0]DataIn2_IBUF;
  wire DataOut;
  wire DataOut_OBUF;
  wire DataOut_OBUF_inst_i_10_n_0;
  wire DataOut_OBUF_inst_i_11_n_0;
  wire DataOut_OBUF_inst_i_12_n_0;
  wire DataOut_OBUF_inst_i_13_n_0;
  wire DataOut_OBUF_inst_i_14_n_0;
  wire DataOut_OBUF_inst_i_15_n_0;
  wire DataOut_OBUF_inst_i_2_n_0;
  wire DataOut_OBUF_inst_i_3_n_0;
  wire DataOut_OBUF_inst_i_4_n_0;
  wire DataOut_OBUF_inst_i_5_n_0;
  wire DataOut_OBUF_inst_i_6_n_0;
  wire DataOut_OBUF_inst_i_7_n_0;
  wire DataOut_OBUF_inst_i_8_n_0;
  wire DataOut_OBUF_inst_i_9_n_0;
  wire Enable;
  wire Enable_IBUF;
  wire [3:0]\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output ;
  wire [3:0]\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output ;
  wire \FiltroPasoBajas/ordenador/p_10_in ;
  wire \FiltroPasoBajas/ordenador/p_11_in ;
  wire \FiltroPasoBajas/ordenador/p_12_in ;
  wire \FiltroPasoBajas/ordenador/p_13_in ;
  wire \FiltroPasoBajas/ordenador/p_14_in ;
  wire \FiltroPasoBajas/ordenador/p_1_in ;
  wire \FiltroPasoBajas/ordenador/p_2_in ;
  wire \FiltroPasoBajas/ordenador/p_32_out ;
  wire \FiltroPasoBajas/ordenador/p_33_out ;
  wire \FiltroPasoBajas/ordenador/p_34_out ;
  wire \FiltroPasoBajas/ordenador/p_35_out ;
  wire \FiltroPasoBajas/ordenador/p_36_out ;
  wire \FiltroPasoBajas/ordenador/p_37_out ;
  wire \FiltroPasoBajas/ordenador/p_38_out ;
  wire \FiltroPasoBajas/ordenador/p_39_out ;
  wire \FiltroPasoBajas/ordenador/p_3_in ;
  wire \FiltroPasoBajas/ordenador/p_40_out ;
  wire \FiltroPasoBajas/ordenador/p_41_out ;
  wire \FiltroPasoBajas/ordenador/p_42_out ;
  wire \FiltroPasoBajas/ordenador/p_43_out ;
  wire \FiltroPasoBajas/ordenador/p_44_out ;
  wire \FiltroPasoBajas/ordenador/p_45_out ;
  wire \FiltroPasoBajas/ordenador/p_46_out ;
  wire \FiltroPasoBajas/ordenador/p_47_out ;
  wire \FiltroPasoBajas/ordenador/p_48_out ;
  wire \FiltroPasoBajas/ordenador/p_49_out ;
  wire \FiltroPasoBajas/ordenador/p_4_in ;
  wire \FiltroPasoBajas/ordenador/p_50_out ;
  wire \FiltroPasoBajas/ordenador/p_51_out ;
  wire \FiltroPasoBajas/ordenador/p_52_out ;
  wire \FiltroPasoBajas/ordenador/p_53_out ;
  wire \FiltroPasoBajas/ordenador/p_54_out ;
  wire \FiltroPasoBajas/ordenador/p_55_out ;
  wire \FiltroPasoBajas/ordenador/p_56_out ;
  wire \FiltroPasoBajas/ordenador/p_57_out ;
  wire \FiltroPasoBajas/ordenador/p_58_out ;
  wire \FiltroPasoBajas/ordenador/p_59_out ;
  wire \FiltroPasoBajas/ordenador/p_5_in ;
  wire \FiltroPasoBajas/ordenador/p_60_out ;
  wire \FiltroPasoBajas/ordenador/p_62_out ;
  wire \FiltroPasoBajas/ordenador/p_6_in ;
  wire \FiltroPasoBajas/ordenador/p_7_in ;
  wire \FiltroPasoBajas/ordenador/p_8_in ;
  wire \FiltroPasoBajas/ordenador/p_9_in ;
  wire \FiltroPasoBajas/ordenador/salAnd[0] ;
  wire \FiltroPasoBajas/ordenador/salAnd[10] ;
  wire \FiltroPasoBajas/ordenador/salAnd[11] ;
  wire \FiltroPasoBajas/ordenador/salAnd[12] ;
  wire \FiltroPasoBajas/ordenador/salAnd[13] ;
  wire \FiltroPasoBajas/ordenador/salAnd[14] ;
  wire \FiltroPasoBajas/ordenador/salAnd[1] ;
  wire \FiltroPasoBajas/ordenador/salAnd[2] ;
  wire \FiltroPasoBajas/ordenador/salAnd[3] ;
  wire \FiltroPasoBajas/ordenador/salAnd[4] ;
  wire \FiltroPasoBajas/ordenador/salAnd[5] ;
  wire \FiltroPasoBajas/ordenador/salAnd[6] ;
  wire \FiltroPasoBajas/ordenador/salAnd[7] ;
  wire \FiltroPasoBajas/ordenador/salAnd[8] ;
  wire \FiltroPasoBajas/ordenador/salAnd[9] ;
  wire P;
  wire P_IBUF;
  wire P_IBUF_BUFG;
  wire Reset;
  wire Reset_IBUF;
  wire \byteShiftReg[1]_i_10_n_0 ;
  wire \byteShiftReg[1]_i_11_n_0 ;
  wire \byteShiftReg[1]_i_12_n_0 ;
  wire \byteShiftReg[1]_i_13_n_0 ;
  wire \byteShiftReg[1]_i_15_n_0 ;
  wire \byteShiftReg[1]_i_21_n_0 ;
  wire \byteShiftReg[1]_i_6_n_0 ;
  wire \byteShiftReg[1]_i_7_n_0 ;
  wire \byteShiftReg[1]_i_9_n_0 ;
  wire \byteShiftReg[4]_i_10_n_0 ;
  wire \byteShiftReg[4]_i_16_n_0 ;
  wire \byteShiftReg[4]_i_17_n_0 ;
  wire \byteShiftReg[4]_i_18_n_0 ;
  wire \byteShiftReg[4]_i_4_n_0 ;
  wire \byteShiftReg[4]_i_60_n_0 ;
  wire \byteShiftReg[4]_i_62_n_0 ;
  wire \byteShiftReg[4]_i_63_n_0 ;
  wire \byteShiftReg[4]_i_65_n_0 ;
  wire \byteShiftReg[4]_i_67_n_0 ;
  wire \byteShiftReg[4]_i_68_n_0 ;
  wire \byteShiftReg[4]_i_69_n_0 ;
  wire \byteShiftReg[4]_i_70_n_0 ;
  wire \byteShiftReg[4]_i_73_n_0 ;
  wire \byteShiftReg[4]_i_75_n_0 ;
  wire \byteShiftReg[4]_i_76_n_0 ;
  wire \byteShiftReg[4]_i_77_n_0 ;
  wire [4:0]p_0_in;
  wire [4:0]p_1_in;
  wire \registroCorrelacion/byteShiftReg_reg_n_0_[0] ;
  wire \registroCorrelacion/byteShiftReg_reg_n_0_[1] ;
  wire \registroCorrelacion/byteShiftReg_reg_n_0_[2] ;
  wire \registroCorrelacion/byteShiftReg_reg_n_0_[3] ;
  wire \registroCorrelacion/byteShiftReg_reg_n_0_[4] ;
  wire [7:5]sel0;
  wire [4:0]valorCorrelacion;

  IBUF \DataIn1_IBUF[0]_inst 
       (.I(DataIn1[0]),
        .O(DataIn1_IBUF[0]));
  IBUF \DataIn1_IBUF[10]_inst 
       (.I(DataIn1[10]),
        .O(DataIn1_IBUF[10]));
  IBUF \DataIn1_IBUF[11]_inst 
       (.I(DataIn1[11]),
        .O(DataIn1_IBUF[11]));
  IBUF \DataIn1_IBUF[12]_inst 
       (.I(DataIn1[12]),
        .O(DataIn1_IBUF[12]));
  IBUF \DataIn1_IBUF[13]_inst 
       (.I(DataIn1[13]),
        .O(DataIn1_IBUF[13]));
  IBUF \DataIn1_IBUF[14]_inst 
       (.I(DataIn1[14]),
        .O(DataIn1_IBUF[14]));
  IBUF \DataIn1_IBUF[15]_inst 
       (.I(DataIn1[15]),
        .O(DataIn1_IBUF[15]));
  IBUF \DataIn1_IBUF[1]_inst 
       (.I(DataIn1[1]),
        .O(DataIn1_IBUF[1]));
  IBUF \DataIn1_IBUF[2]_inst 
       (.I(DataIn1[2]),
        .O(DataIn1_IBUF[2]));
  IBUF \DataIn1_IBUF[3]_inst 
       (.I(DataIn1[3]),
        .O(DataIn1_IBUF[3]));
  IBUF \DataIn1_IBUF[4]_inst 
       (.I(DataIn1[4]),
        .O(DataIn1_IBUF[4]));
  IBUF \DataIn1_IBUF[5]_inst 
       (.I(DataIn1[5]),
        .O(DataIn1_IBUF[5]));
  IBUF \DataIn1_IBUF[6]_inst 
       (.I(DataIn1[6]),
        .O(DataIn1_IBUF[6]));
  IBUF \DataIn1_IBUF[7]_inst 
       (.I(DataIn1[7]),
        .O(DataIn1_IBUF[7]));
  IBUF \DataIn1_IBUF[8]_inst 
       (.I(DataIn1[8]),
        .O(DataIn1_IBUF[8]));
  IBUF \DataIn1_IBUF[9]_inst 
       (.I(DataIn1[9]),
        .O(DataIn1_IBUF[9]));
  IBUF \DataIn2_IBUF[0]_inst 
       (.I(DataIn2[0]),
        .O(DataIn2_IBUF[0]));
  IBUF \DataIn2_IBUF[10]_inst 
       (.I(DataIn2[10]),
        .O(DataIn2_IBUF[10]));
  IBUF \DataIn2_IBUF[11]_inst 
       (.I(DataIn2[11]),
        .O(DataIn2_IBUF[11]));
  IBUF \DataIn2_IBUF[12]_inst 
       (.I(DataIn2[12]),
        .O(DataIn2_IBUF[12]));
  IBUF \DataIn2_IBUF[13]_inst 
       (.I(DataIn2[13]),
        .O(DataIn2_IBUF[13]));
  IBUF \DataIn2_IBUF[14]_inst 
       (.I(DataIn2[14]),
        .O(DataIn2_IBUF[14]));
  IBUF \DataIn2_IBUF[15]_inst 
       (.I(DataIn2[15]),
        .O(DataIn2_IBUF[15]));
  IBUF \DataIn2_IBUF[1]_inst 
       (.I(DataIn2[1]),
        .O(DataIn2_IBUF[1]));
  IBUF \DataIn2_IBUF[2]_inst 
       (.I(DataIn2[2]),
        .O(DataIn2_IBUF[2]));
  IBUF \DataIn2_IBUF[3]_inst 
       (.I(DataIn2[3]),
        .O(DataIn2_IBUF[3]));
  IBUF \DataIn2_IBUF[4]_inst 
       (.I(DataIn2[4]),
        .O(DataIn2_IBUF[4]));
  IBUF \DataIn2_IBUF[5]_inst 
       (.I(DataIn2[5]),
        .O(DataIn2_IBUF[5]));
  IBUF \DataIn2_IBUF[6]_inst 
       (.I(DataIn2[6]),
        .O(DataIn2_IBUF[6]));
  IBUF \DataIn2_IBUF[7]_inst 
       (.I(DataIn2[7]),
        .O(DataIn2_IBUF[7]));
  IBUF \DataIn2_IBUF[8]_inst 
       (.I(DataIn2[8]),
        .O(DataIn2_IBUF[8]));
  IBUF \DataIn2_IBUF[9]_inst 
       (.I(DataIn2[9]),
        .O(DataIn2_IBUF[9]));
  OBUF DataOut_OBUF_inst
       (.I(DataOut_OBUF),
        .O(DataOut));
  LUT6 #(
    .INIT(64'hB2BB22B200000000)) 
    DataOut_OBUF_inst_i_1
       (.I0(valorCorrelacion[4]),
        .I1(DataOut_OBUF_inst_i_2_n_0),
        .I2(valorCorrelacion[3]),
        .I3(DataOut_OBUF_inst_i_3_n_0),
        .I4(DataOut_OBUF_inst_i_4_n_0),
        .I5(Enable_IBUF),
        .O(DataOut_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000566A)) 
    DataOut_OBUF_inst_i_10
       (.I0(DataOut_OBUF_inst_i_14_n_0),
        .I1(p_0_in[0]),
        .I2(\registroCorrelacion/byteShiftReg_reg_n_0_[0] ),
        .I3(p_1_in[0]),
        .I4(Reset_IBUF),
        .O(DataOut_OBUF_inst_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000E81717E8)) 
    DataOut_OBUF_inst_i_11
       (.I0(p_1_in[1]),
        .I1(\registroCorrelacion/byteShiftReg_reg_n_0_[1] ),
        .I2(p_0_in[1]),
        .I3(DataOut_OBUF_inst_i_15_n_0),
        .I4(DataOut_OBUF_inst_i_13_n_0),
        .I5(Reset_IBUF),
        .O(DataOut_OBUF_inst_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    DataOut_OBUF_inst_i_12
       (.I0(p_0_in[1]),
        .I1(\registroCorrelacion/byteShiftReg_reg_n_0_[1] ),
        .I2(p_1_in[1]),
        .O(DataOut_OBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'h9696960096000000)) 
    DataOut_OBUF_inst_i_13
       (.I0(\registroCorrelacion/byteShiftReg_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .I2(p_1_in[1]),
        .I3(p_1_in[0]),
        .I4(\registroCorrelacion/byteShiftReg_reg_n_0_[0] ),
        .I5(p_0_in[0]),
        .O(DataOut_OBUF_inst_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    DataOut_OBUF_inst_i_14
       (.I0(p_1_in[1]),
        .I1(p_0_in[1]),
        .I2(\registroCorrelacion/byteShiftReg_reg_n_0_[1] ),
        .O(DataOut_OBUF_inst_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    DataOut_OBUF_inst_i_15
       (.I0(p_1_in[2]),
        .I1(p_0_in[2]),
        .I2(\registroCorrelacion/byteShiftReg_reg_n_0_[2] ),
        .O(DataOut_OBUF_inst_i_15_n_0));
  LUT5 #(
    .INIT(32'h0000566A)) 
    DataOut_OBUF_inst_i_2
       (.I0(DataOut_OBUF_inst_i_5_n_0),
        .I1(DataOut_OBUF_inst_i_6_n_0),
        .I2(DataOut_OBUF_inst_i_7_n_0),
        .I3(DataOut_OBUF_inst_i_8_n_0),
        .I4(Reset_IBUF),
        .O(DataOut_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000E81717E8)) 
    DataOut_OBUF_inst_i_3
       (.I0(p_1_in[2]),
        .I1(\registroCorrelacion/byteShiftReg_reg_n_0_[2] ),
        .I2(p_0_in[2]),
        .I3(DataOut_OBUF_inst_i_6_n_0),
        .I4(DataOut_OBUF_inst_i_8_n_0),
        .I5(Reset_IBUF),
        .O(DataOut_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    DataOut_OBUF_inst_i_4
       (.I0(DataOut_OBUF_inst_i_9_n_0),
        .I1(valorCorrelacion[0]),
        .I2(DataOut_OBUF_inst_i_10_n_0),
        .I3(valorCorrelacion[1]),
        .I4(DataOut_OBUF_inst_i_11_n_0),
        .I5(valorCorrelacion[2]),
        .O(DataOut_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    DataOut_OBUF_inst_i_5
       (.I0(p_1_in[3]),
        .I1(\registroCorrelacion/byteShiftReg_reg_n_0_[3] ),
        .I2(p_0_in[3]),
        .I3(\registroCorrelacion/byteShiftReg_reg_n_0_[4] ),
        .I4(p_0_in[4]),
        .I5(p_1_in[4]),
        .O(DataOut_OBUF_inst_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    DataOut_OBUF_inst_i_6
       (.I0(p_1_in[3]),
        .I1(p_0_in[3]),
        .I2(\registroCorrelacion/byteShiftReg_reg_n_0_[3] ),
        .O(DataOut_OBUF_inst_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    DataOut_OBUF_inst_i_7
       (.I0(p_0_in[2]),
        .I1(\registroCorrelacion/byteShiftReg_reg_n_0_[2] ),
        .I2(p_1_in[2]),
        .O(DataOut_OBUF_inst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    DataOut_OBUF_inst_i_8
       (.I0(\registroCorrelacion/byteShiftReg_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .I2(p_1_in[2]),
        .I3(DataOut_OBUF_inst_i_12_n_0),
        .I4(DataOut_OBUF_inst_i_13_n_0),
        .O(DataOut_OBUF_inst_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0096)) 
    DataOut_OBUF_inst_i_9
       (.I0(\registroCorrelacion/byteShiftReg_reg_n_0_[0] ),
        .I1(p_0_in[0]),
        .I2(p_1_in[0]),
        .I3(Reset_IBUF),
        .O(DataOut_OBUF_inst_i_9_n_0));
  IBUF Enable_IBUF_inst
       (.I(Enable),
        .O(Enable_IBUF));
  BUFG P_IBUF_BUFG_inst
       (.I(P_IBUF),
        .O(P_IBUF_BUFG));
  IBUF P_IBUF_inst
       (.I(P),
        .O(P_IBUF));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \byteShiftReg[0]_i_1 
       (.I0(Enable_IBUF),
        .I1(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [0]),
        .I2(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [0]),
        .O(valorCorrelacion[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80707080)) 
    \byteShiftReg[1]_i_1 
       (.I0(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [0]),
        .I1(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [0]),
        .I2(Enable_IBUF),
        .I3(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [1]),
        .I4(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [1]),
        .O(valorCorrelacion[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \byteShiftReg[1]_i_10 
       (.I0(\FiltroPasoBajas/ordenador/p_62_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/salAnd[0] ),
        .O(\byteShiftReg[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hECCCECCECCCCCCCD)) 
    \byteShiftReg[1]_i_11 
       (.I0(\FiltroPasoBajas/ordenador/p_58_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_56_out ),
        .I3(\FiltroPasoBajas/ordenador/p_54_out ),
        .I4(\FiltroPasoBajas/ordenador/p_52_out ),
        .I5(\FiltroPasoBajas/ordenador/p_60_out ),
        .O(\byteShiftReg[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCDFF)) 
    \byteShiftReg[1]_i_12 
       (.I0(\FiltroPasoBajas/ordenador/p_62_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/salAnd[0] ),
        .I3(\FiltroPasoBajas/ordenador/p_60_out ),
        .O(\byteShiftReg[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hECCCCCCCECCCCCCF)) 
    \byteShiftReg[1]_i_13 
       (.I0(\FiltroPasoBajas/ordenador/p_58_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_56_out ),
        .I3(\FiltroPasoBajas/ordenador/p_54_out ),
        .I4(\FiltroPasoBajas/ordenador/p_52_out ),
        .I5(\FiltroPasoBajas/ordenador/p_50_out ),
        .O(\byteShiftReg[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[1]_i_14 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[12] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[1]_i_21_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_35_out ),
        .I4(\FiltroPasoBajas/ordenador/p_13_in ),
        .I5(\FiltroPasoBajas/ordenador/p_34_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[13] ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[1]_i_15 
       (.I0(DataIn1_IBUF[14]),
        .I1(DataIn2_IBUF[14]),
        .O(\byteShiftReg[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[1]_i_16 
       (.I0(DataIn2_IBUF[14]),
        .I1(DataIn1_IBUF[14]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_34_out ),
        .I4(\FiltroPasoBajas/ordenador/p_14_in ),
        .I5(\FiltroPasoBajas/ordenador/p_32_out ),
        .O(\FiltroPasoBajas/ordenador/p_14_in ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[1]_i_17 
       (.I0(\FiltroPasoBajas/ordenador/p_44_out ),
        .I1(\FiltroPasoBajas/ordenador/p_45_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[9]),
        .I4(DataIn1_IBUF[9]),
        .I5(\FiltroPasoBajas/ordenador/p_43_out ),
        .O(\FiltroPasoBajas/ordenador/p_44_out ));
  LUT5 #(
    .INIT(32'hC3FFC3AA)) 
    \byteShiftReg[1]_i_18 
       (.I0(\FiltroPasoBajas/ordenador/p_62_out ),
        .I1(DataIn2_IBUF[0]),
        .I2(DataIn1_IBUF[0]),
        .I3(P_IBUF),
        .I4(\FiltroPasoBajas/ordenador/salAnd[0] ),
        .O(\FiltroPasoBajas/ordenador/p_62_out ));
  LUT6 #(
    .INIT(64'h1400145500000000)) 
    \byteShiftReg[1]_i_19 
       (.I0(\FiltroPasoBajas/ordenador/p_62_out ),
        .I1(DataIn2_IBUF[0]),
        .I2(DataIn1_IBUF[0]),
        .I3(P_IBUF),
        .I4(\FiltroPasoBajas/ordenador/salAnd[0] ),
        .I5(\FiltroPasoBajas/ordenador/p_60_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[0] ));
  LUT5 #(
    .INIT(32'h55540000)) 
    \byteShiftReg[1]_i_2 
       (.I0(\byteShiftReg[1]_i_6_n_0 ),
        .I1(\byteShiftReg[1]_i_7_n_0 ),
        .I2(\FiltroPasoBajas/ordenador/salAnd[14] ),
        .I3(P_IBUF),
        .I4(\byteShiftReg[1]_i_9_n_0 ),
        .O(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000D11D)) 
    \byteShiftReg[1]_i_20 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[0] ),
        .I1(P_IBUF),
        .I2(DataIn2_IBUF[1]),
        .I3(DataIn1_IBUF[1]),
        .I4(\FiltroPasoBajas/ordenador/p_59_out ),
        .O(\FiltroPasoBajas/ordenador/p_60_out ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[1]_i_21 
       (.I0(DataIn1_IBUF[13]),
        .I1(DataIn2_IBUF[13]),
        .O(\byteShiftReg[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCCED000000000000)) 
    \byteShiftReg[1]_i_3 
       (.I0(\FiltroPasoBajas/ordenador/p_52_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_50_out ),
        .I3(\FiltroPasoBajas/ordenador/p_48_out ),
        .I4(\byteShiftReg[1]_i_10_n_0 ),
        .I5(\byteShiftReg[1]_i_11_n_0 ),
        .O(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [0]));
  LUT4 #(
    .INIT(16'h0D00)) 
    \byteShiftReg[1]_i_4 
       (.I0(\FiltroPasoBajas/ordenador/p_48_out ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[1]_i_12_n_0 ),
        .I3(\byteShiftReg[1]_i_13_n_0 ),
        .O(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [1]));
  LUT3 #(
    .INIT(8'h10)) 
    \byteShiftReg[1]_i_5 
       (.I0(\byteShiftReg[4]_i_18_n_0 ),
        .I1(sel0[7]),
        .I2(\byteShiftReg[4]_i_17_n_0 ),
        .O(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [1]));
  LUT5 #(
    .INIT(32'hFFE1FFFF)) 
    \byteShiftReg[1]_i_6 
       (.I0(\FiltroPasoBajas/ordenador/p_33_out ),
        .I1(\FiltroPasoBajas/ordenador/salAnd[13] ),
        .I2(sel0[5]),
        .I3(P_IBUF),
        .I4(\FiltroPasoBajas/ordenador/p_46_out ),
        .O(\byteShiftReg[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h006F)) 
    \byteShiftReg[1]_i_7 
       (.I0(DataIn1_IBUF[15]),
        .I1(DataIn2_IBUF[15]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_32_out ),
        .O(\byteShiftReg[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[1]_i_8 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[13] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[1]_i_15_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_33_out ),
        .I4(\FiltroPasoBajas/ordenador/p_14_in ),
        .I5(\FiltroPasoBajas/ordenador/p_32_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[14] ));
  LUT6 #(
    .INIT(64'h2000ECCE0000CCCD)) 
    \byteShiftReg[1]_i_9 
       (.I0(\FiltroPasoBajas/ordenador/p_42_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_40_out ),
        .I3(\FiltroPasoBajas/ordenador/p_38_out ),
        .I4(sel0[5]),
        .I5(\FiltroPasoBajas/ordenador/p_44_out ),
        .O(\byteShiftReg[1]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \byteShiftReg[2]_i_1 
       (.I0(Enable_IBUF),
        .I1(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [2]),
        .I2(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [2]),
        .I3(\byteShiftReg[4]_i_4_n_0 ),
        .O(valorCorrelacion[2]));
  LUT6 #(
    .INIT(64'hE80017001700E800)) 
    \byteShiftReg[3]_i_1 
       (.I0(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [2]),
        .I1(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [2]),
        .I2(\byteShiftReg[4]_i_4_n_0 ),
        .I3(Enable_IBUF),
        .I4(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [3]),
        .I5(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [3]),
        .O(valorCorrelacion[3]));
  LUT6 #(
    .INIT(64'hFF00E800E8000000)) 
    \byteShiftReg[4]_i_1 
       (.I0(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [2]),
        .I1(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [2]),
        .I2(\byteShiftReg[4]_i_4_n_0 ),
        .I3(Enable_IBUF),
        .I4(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [3]),
        .I5(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [3]),
        .O(valorCorrelacion[4]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \byteShiftReg[4]_i_10 
       (.I0(\FiltroPasoBajas/ordenador/p_42_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_40_out ),
        .I3(\byteShiftReg[4]_i_18_n_0 ),
        .O(\byteShiftReg[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0015)) 
    \byteShiftReg[4]_i_11 
       (.I0(\byteShiftReg[1]_i_7_n_0 ),
        .I1(\FiltroPasoBajas/ordenador/p_33_out ),
        .I2(\FiltroPasoBajas/ordenador/p_32_out ),
        .I3(P_IBUF),
        .O(sel0[7]));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_12 
       (.I0(\FiltroPasoBajas/ordenador/p_54_out ),
        .I1(\FiltroPasoBajas/ordenador/p_55_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[4]),
        .I4(DataIn1_IBUF[4]),
        .I5(\FiltroPasoBajas/ordenador/p_53_out ),
        .O(\FiltroPasoBajas/ordenador/p_54_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_13 
       (.I0(\FiltroPasoBajas/ordenador/p_52_out ),
        .I1(\FiltroPasoBajas/ordenador/p_53_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[5]),
        .I4(DataIn1_IBUF[5]),
        .I5(\FiltroPasoBajas/ordenador/p_51_out ),
        .O(\FiltroPasoBajas/ordenador/p_52_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_14 
       (.I0(\FiltroPasoBajas/ordenador/p_50_out ),
        .I1(\FiltroPasoBajas/ordenador/p_51_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[6]),
        .I4(DataIn1_IBUF[6]),
        .I5(\FiltroPasoBajas/ordenador/p_49_out ),
        .O(\FiltroPasoBajas/ordenador/p_50_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_15 
       (.I0(\FiltroPasoBajas/ordenador/p_48_out ),
        .I1(\FiltroPasoBajas/ordenador/p_49_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[7]),
        .I4(DataIn1_IBUF[7]),
        .I5(\FiltroPasoBajas/ordenador/p_47_out ),
        .O(\FiltroPasoBajas/ordenador/p_48_out ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \byteShiftReg[4]_i_16 
       (.I0(\FiltroPasoBajas/ordenador/p_58_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_56_out ),
        .I3(\byteShiftReg[1]_i_12_n_0 ),
        .O(\byteShiftReg[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h200020000000CCCF)) 
    \byteShiftReg[4]_i_17 
       (.I0(\FiltroPasoBajas/ordenador/p_42_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_40_out ),
        .I3(\FiltroPasoBajas/ordenador/p_38_out ),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\byteShiftReg[4]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \byteShiftReg[4]_i_18 
       (.I0(\FiltroPasoBajas/ordenador/p_43_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_46_out ),
        .O(\byteShiftReg[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_19 
       (.I0(\FiltroPasoBajas/ordenador/p_11_in ),
        .I1(\FiltroPasoBajas/ordenador/p_39_out ),
        .I2(DataIn1_IBUF[11]),
        .I3(DataIn2_IBUF[11]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[10] ),
        .O(\FiltroPasoBajas/ordenador/p_39_out ));
  LUT6 #(
    .INIT(64'h000000000000220F)) 
    \byteShiftReg[4]_i_2 
       (.I0(\FiltroPasoBajas/ordenador/p_38_out ),
        .I1(P_IBUF),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .I4(\byteShiftReg[4]_i_10_n_0 ),
        .I5(sel0[7]),
        .O(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [2]));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_20 
       (.I0(\FiltroPasoBajas/ordenador/p_12_in ),
        .I1(\FiltroPasoBajas/ordenador/p_37_out ),
        .I2(DataIn1_IBUF[12]),
        .I3(DataIn2_IBUF[12]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[11] ),
        .O(\FiltroPasoBajas/ordenador/p_37_out ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_21 
       (.I0(\FiltroPasoBajas/ordenador/p_14_in ),
        .I1(\FiltroPasoBajas/ordenador/p_33_out ),
        .I2(DataIn1_IBUF[14]),
        .I3(DataIn2_IBUF[14]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[13] ),
        .O(\FiltroPasoBajas/ordenador/p_33_out ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_22 
       (.I0(\FiltroPasoBajas/ordenador/p_13_in ),
        .I1(\FiltroPasoBajas/ordenador/p_35_out ),
        .I2(DataIn1_IBUF[13]),
        .I3(DataIn2_IBUF[13]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[12] ),
        .O(\FiltroPasoBajas/ordenador/p_35_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_23 
       (.I0(\FiltroPasoBajas/ordenador/p_34_out ),
        .I1(\FiltroPasoBajas/ordenador/p_35_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[14]),
        .I4(DataIn1_IBUF[14]),
        .I5(\FiltroPasoBajas/ordenador/p_33_out ),
        .O(\FiltroPasoBajas/ordenador/p_34_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_24 
       (.I0(\FiltroPasoBajas/ordenador/p_36_out ),
        .I1(\FiltroPasoBajas/ordenador/p_37_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[13]),
        .I4(DataIn1_IBUF[13]),
        .I5(\FiltroPasoBajas/ordenador/p_35_out ),
        .O(\FiltroPasoBajas/ordenador/p_36_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_25 
       (.I0(\FiltroPasoBajas/ordenador/p_42_out ),
        .I1(\FiltroPasoBajas/ordenador/p_43_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[10]),
        .I4(DataIn1_IBUF[10]),
        .I5(\FiltroPasoBajas/ordenador/p_41_out ),
        .O(\FiltroPasoBajas/ordenador/p_42_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_26 
       (.I0(\FiltroPasoBajas/ordenador/p_40_out ),
        .I1(\FiltroPasoBajas/ordenador/p_41_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[11]),
        .I4(DataIn1_IBUF[11]),
        .I5(\FiltroPasoBajas/ordenador/p_39_out ),
        .O(\FiltroPasoBajas/ordenador/p_40_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_27 
       (.I0(\FiltroPasoBajas/ordenador/p_32_out ),
        .I1(\FiltroPasoBajas/ordenador/p_33_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[15]),
        .I4(DataIn1_IBUF[15]),
        .I5(\byteShiftReg[1]_i_7_n_0 ),
        .O(\FiltroPasoBajas/ordenador/p_32_out ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_28 
       (.I0(\FiltroPasoBajas/ordenador/p_3_in ),
        .I1(\FiltroPasoBajas/ordenador/p_55_out ),
        .I2(DataIn1_IBUF[3]),
        .I3(DataIn2_IBUF[3]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[2] ),
        .O(\FiltroPasoBajas/ordenador/p_55_out ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_29 
       (.I0(\FiltroPasoBajas/ordenador/p_4_in ),
        .I1(\FiltroPasoBajas/ordenador/p_53_out ),
        .I2(DataIn1_IBUF[4]),
        .I3(DataIn2_IBUF[4]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[3] ),
        .O(\FiltroPasoBajas/ordenador/p_53_out ));
  LUT6 #(
    .INIT(64'h00000000CCCCECEF)) 
    \byteShiftReg[4]_i_3 
       (.I0(\FiltroPasoBajas/ordenador/p_54_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_52_out ),
        .I3(\FiltroPasoBajas/ordenador/p_50_out ),
        .I4(\FiltroPasoBajas/ordenador/p_48_out ),
        .I5(\byteShiftReg[4]_i_16_n_0 ),
        .O(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [2]));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_30 
       (.I0(\FiltroPasoBajas/ordenador/p_5_in ),
        .I1(\FiltroPasoBajas/ordenador/p_51_out ),
        .I2(DataIn1_IBUF[5]),
        .I3(DataIn2_IBUF[5]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[4] ),
        .O(\FiltroPasoBajas/ordenador/p_51_out ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_31 
       (.I0(\FiltroPasoBajas/ordenador/p_6_in ),
        .I1(\FiltroPasoBajas/ordenador/p_49_out ),
        .I2(DataIn1_IBUF[6]),
        .I3(DataIn2_IBUF[6]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[5] ),
        .O(\FiltroPasoBajas/ordenador/p_49_out ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_32 
       (.I0(\FiltroPasoBajas/ordenador/p_7_in ),
        .I1(\FiltroPasoBajas/ordenador/p_47_out ),
        .I2(DataIn1_IBUF[7]),
        .I3(DataIn2_IBUF[7]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[6] ),
        .O(\FiltroPasoBajas/ordenador/p_47_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_33 
       (.I0(\FiltroPasoBajas/ordenador/p_58_out ),
        .I1(\FiltroPasoBajas/ordenador/p_59_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[2]),
        .I4(DataIn1_IBUF[2]),
        .I5(\FiltroPasoBajas/ordenador/p_57_out ),
        .O(\FiltroPasoBajas/ordenador/p_58_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_34 
       (.I0(\FiltroPasoBajas/ordenador/p_56_out ),
        .I1(\FiltroPasoBajas/ordenador/p_57_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[3]),
        .I4(DataIn1_IBUF[3]),
        .I5(\FiltroPasoBajas/ordenador/p_55_out ),
        .O(\FiltroPasoBajas/ordenador/p_56_out ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_35 
       (.I0(\FiltroPasoBajas/ordenador/p_9_in ),
        .I1(\FiltroPasoBajas/ordenador/p_43_out ),
        .I2(DataIn1_IBUF[9]),
        .I3(DataIn2_IBUF[9]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[8] ),
        .O(\FiltroPasoBajas/ordenador/p_43_out ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_36 
       (.I0(\FiltroPasoBajas/ordenador/p_46_out ),
        .I1(\FiltroPasoBajas/ordenador/p_47_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[8]),
        .I4(DataIn1_IBUF[8]),
        .I5(\FiltroPasoBajas/ordenador/p_45_out ),
        .O(\FiltroPasoBajas/ordenador/p_46_out ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_37 
       (.I0(DataIn2_IBUF[11]),
        .I1(DataIn1_IBUF[11]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_40_out ),
        .I4(\FiltroPasoBajas/ordenador/p_11_in ),
        .I5(\FiltroPasoBajas/ordenador/p_38_out ),
        .O(\FiltroPasoBajas/ordenador/p_11_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_38 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[9] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_60_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_41_out ),
        .I4(\FiltroPasoBajas/ordenador/p_10_in ),
        .I5(\FiltroPasoBajas/ordenador/p_40_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[10] ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_39 
       (.I0(DataIn2_IBUF[12]),
        .I1(DataIn1_IBUF[12]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_38_out ),
        .I4(\FiltroPasoBajas/ordenador/p_12_in ),
        .I5(\FiltroPasoBajas/ordenador/p_36_out ),
        .O(\FiltroPasoBajas/ordenador/p_12_in ));
  LUT6 #(
    .INIT(64'hFF02020002000200)) 
    \byteShiftReg[4]_i_4 
       (.I0(\byteShiftReg[4]_i_17_n_0 ),
        .I1(sel0[7]),
        .I2(\byteShiftReg[4]_i_18_n_0 ),
        .I3(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [1]),
        .I4(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [0]),
        .I5(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [0]),
        .O(\byteShiftReg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_40 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[10] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_62_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_39_out ),
        .I4(\FiltroPasoBajas/ordenador/p_11_in ),
        .I5(\FiltroPasoBajas/ordenador/p_38_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[11] ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_41 
       (.I0(DataIn2_IBUF[13]),
        .I1(DataIn1_IBUF[13]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_36_out ),
        .I4(\FiltroPasoBajas/ordenador/p_13_in ),
        .I5(\FiltroPasoBajas/ordenador/p_34_out ),
        .O(\FiltroPasoBajas/ordenador/p_13_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_42 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[11] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_63_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_37_out ),
        .I4(\FiltroPasoBajas/ordenador/p_12_in ),
        .I5(\FiltroPasoBajas/ordenador/p_36_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[12] ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_43 
       (.I0(\FiltroPasoBajas/ordenador/p_10_in ),
        .I1(\FiltroPasoBajas/ordenador/p_41_out ),
        .I2(DataIn1_IBUF[10]),
        .I3(DataIn2_IBUF[10]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[9] ),
        .O(\FiltroPasoBajas/ordenador/p_41_out ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_44 
       (.I0(DataIn2_IBUF[3]),
        .I1(DataIn1_IBUF[3]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_56_out ),
        .I4(\FiltroPasoBajas/ordenador/p_3_in ),
        .I5(\FiltroPasoBajas/ordenador/p_54_out ),
        .O(\FiltroPasoBajas/ordenador/p_3_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_45 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[1] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_65_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_57_out ),
        .I4(\FiltroPasoBajas/ordenador/p_2_in ),
        .I5(\FiltroPasoBajas/ordenador/p_56_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[2] ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_46 
       (.I0(DataIn2_IBUF[4]),
        .I1(DataIn1_IBUF[4]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_54_out ),
        .I4(\FiltroPasoBajas/ordenador/p_4_in ),
        .I5(\FiltroPasoBajas/ordenador/p_52_out ),
        .O(\FiltroPasoBajas/ordenador/p_4_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_47 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[2] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_67_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_55_out ),
        .I4(\FiltroPasoBajas/ordenador/p_3_in ),
        .I5(\FiltroPasoBajas/ordenador/p_54_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[3] ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_48 
       (.I0(DataIn2_IBUF[5]),
        .I1(DataIn1_IBUF[5]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_52_out ),
        .I4(\FiltroPasoBajas/ordenador/p_5_in ),
        .I5(\FiltroPasoBajas/ordenador/p_50_out ),
        .O(\FiltroPasoBajas/ordenador/p_5_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_49 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[3] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_68_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_53_out ),
        .I4(\FiltroPasoBajas/ordenador/p_4_in ),
        .I5(\FiltroPasoBajas/ordenador/p_52_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[4] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \byteShiftReg[4]_i_5 
       (.I0(\FiltroPasoBajas/ordenador/p_54_out ),
        .I1(P_IBUF),
        .I2(\FiltroPasoBajas/ordenador/p_52_out ),
        .I3(\FiltroPasoBajas/ordenador/p_50_out ),
        .I4(\FiltroPasoBajas/ordenador/p_48_out ),
        .I5(\byteShiftReg[4]_i_16_n_0 ),
        .O(\FiltroPasoBajas/cantUnos/t2bs[0].t2b/Output [3]));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_50 
       (.I0(DataIn2_IBUF[6]),
        .I1(DataIn1_IBUF[6]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_50_out ),
        .I4(\FiltroPasoBajas/ordenador/p_6_in ),
        .I5(\FiltroPasoBajas/ordenador/p_48_out ),
        .O(\FiltroPasoBajas/ordenador/p_6_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_51 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[4] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_69_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_51_out ),
        .I4(\FiltroPasoBajas/ordenador/p_5_in ),
        .I5(\FiltroPasoBajas/ordenador/p_50_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[5] ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_52 
       (.I0(DataIn2_IBUF[7]),
        .I1(DataIn1_IBUF[7]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_48_out ),
        .I4(\FiltroPasoBajas/ordenador/p_7_in ),
        .I5(\FiltroPasoBajas/ordenador/p_46_out ),
        .O(\FiltroPasoBajas/ordenador/p_7_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_53 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[5] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_70_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_49_out ),
        .I4(\FiltroPasoBajas/ordenador/p_6_in ),
        .I5(\FiltroPasoBajas/ordenador/p_48_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[6] ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_54 
       (.I0(\FiltroPasoBajas/ordenador/p_1_in ),
        .I1(\FiltroPasoBajas/ordenador/p_59_out ),
        .I2(DataIn1_IBUF[1]),
        .I3(DataIn2_IBUF[1]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[0] ),
        .O(\FiltroPasoBajas/ordenador/p_59_out ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_55 
       (.I0(\FiltroPasoBajas/ordenador/p_2_in ),
        .I1(\FiltroPasoBajas/ordenador/p_57_out ),
        .I2(DataIn1_IBUF[2]),
        .I3(DataIn2_IBUF[2]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[1] ),
        .O(\FiltroPasoBajas/ordenador/p_57_out ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_56 
       (.I0(DataIn2_IBUF[9]),
        .I1(DataIn1_IBUF[9]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_44_out ),
        .I4(\FiltroPasoBajas/ordenador/p_9_in ),
        .I5(\FiltroPasoBajas/ordenador/p_42_out ),
        .O(\FiltroPasoBajas/ordenador/p_9_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_57 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[7] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_73_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_45_out ),
        .I4(\FiltroPasoBajas/ordenador/p_8_in ),
        .I5(\FiltroPasoBajas/ordenador/p_44_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[8] ));
  LUT6 #(
    .INIT(64'h4554555545544444)) 
    \byteShiftReg[4]_i_58 
       (.I0(\FiltroPasoBajas/ordenador/p_8_in ),
        .I1(\FiltroPasoBajas/ordenador/p_45_out ),
        .I2(DataIn1_IBUF[8]),
        .I3(DataIn2_IBUF[8]),
        .I4(P_IBUF),
        .I5(\FiltroPasoBajas/ordenador/salAnd[7] ),
        .O(\FiltroPasoBajas/ordenador/p_45_out ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_59 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[8] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_75_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_43_out ),
        .I4(\FiltroPasoBajas/ordenador/p_9_in ),
        .I5(\FiltroPasoBajas/ordenador/p_42_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[9] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \byteShiftReg[4]_i_6 
       (.I0(\FiltroPasoBajas/ordenador/p_38_out ),
        .I1(P_IBUF),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .I5(\byteShiftReg[4]_i_10_n_0 ),
        .O(\FiltroPasoBajas/cantUnos/t2bs[8].t2b/Output [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_60 
       (.I0(DataIn1_IBUF[10]),
        .I1(DataIn2_IBUF[10]),
        .O(\byteShiftReg[4]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_61 
       (.I0(DataIn2_IBUF[10]),
        .I1(DataIn1_IBUF[10]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_42_out ),
        .I4(\FiltroPasoBajas/ordenador/p_10_in ),
        .I5(\FiltroPasoBajas/ordenador/p_40_out ),
        .O(\FiltroPasoBajas/ordenador/p_10_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_62 
       (.I0(DataIn1_IBUF[11]),
        .I1(DataIn2_IBUF[11]),
        .O(\byteShiftReg[4]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_63 
       (.I0(DataIn1_IBUF[12]),
        .I1(DataIn2_IBUF[12]),
        .O(\byteShiftReg[4]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_64 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[0] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_76_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_59_out ),
        .I4(\FiltroPasoBajas/ordenador/p_1_in ),
        .I5(\FiltroPasoBajas/ordenador/p_58_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[1] ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_65 
       (.I0(DataIn1_IBUF[2]),
        .I1(DataIn2_IBUF[2]),
        .O(\byteShiftReg[4]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_66 
       (.I0(DataIn2_IBUF[2]),
        .I1(DataIn1_IBUF[2]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_58_out ),
        .I4(\FiltroPasoBajas/ordenador/p_2_in ),
        .I5(\FiltroPasoBajas/ordenador/p_56_out ),
        .O(\FiltroPasoBajas/ordenador/p_2_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_67 
       (.I0(DataIn1_IBUF[3]),
        .I1(DataIn2_IBUF[3]),
        .O(\byteShiftReg[4]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_68 
       (.I0(DataIn1_IBUF[4]),
        .I1(DataIn2_IBUF[4]),
        .O(\byteShiftReg[4]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_69 
       (.I0(DataIn1_IBUF[5]),
        .I1(DataIn2_IBUF[5]),
        .O(\byteShiftReg[4]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F70707F7)) 
    \byteShiftReg[4]_i_7 
       (.I0(\FiltroPasoBajas/ordenador/p_38_out ),
        .I1(\FiltroPasoBajas/ordenador/p_39_out ),
        .I2(P_IBUF),
        .I3(DataIn2_IBUF[12]),
        .I4(DataIn1_IBUF[12]),
        .I5(\FiltroPasoBajas/ordenador/p_37_out ),
        .O(\FiltroPasoBajas/ordenador/p_38_out ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_70 
       (.I0(DataIn1_IBUF[6]),
        .I1(DataIn2_IBUF[6]),
        .O(\byteShiftReg[4]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_71 
       (.I0(DataIn2_IBUF[1]),
        .I1(DataIn1_IBUF[1]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_60_out ),
        .I4(\FiltroPasoBajas/ordenador/p_1_in ),
        .I5(\FiltroPasoBajas/ordenador/p_58_out ),
        .O(\FiltroPasoBajas/ordenador/p_1_in ));
  LUT6 #(
    .INIT(64'h0000FFE200000000)) 
    \byteShiftReg[4]_i_72 
       (.I0(\FiltroPasoBajas/ordenador/salAnd[6] ),
        .I1(P_IBUF),
        .I2(\byteShiftReg[4]_i_77_n_0 ),
        .I3(\FiltroPasoBajas/ordenador/p_47_out ),
        .I4(\FiltroPasoBajas/ordenador/p_7_in ),
        .I5(\FiltroPasoBajas/ordenador/p_46_out ),
        .O(\FiltroPasoBajas/ordenador/salAnd[7] ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_73 
       (.I0(DataIn1_IBUF[8]),
        .I1(DataIn2_IBUF[8]),
        .O(\byteShiftReg[4]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h9090909F90909090)) 
    \byteShiftReg[4]_i_74 
       (.I0(DataIn2_IBUF[8]),
        .I1(DataIn1_IBUF[8]),
        .I2(P_IBUF),
        .I3(\FiltroPasoBajas/ordenador/p_46_out ),
        .I4(\FiltroPasoBajas/ordenador/p_8_in ),
        .I5(\FiltroPasoBajas/ordenador/p_44_out ),
        .O(\FiltroPasoBajas/ordenador/p_8_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_75 
       (.I0(DataIn1_IBUF[9]),
        .I1(DataIn2_IBUF[9]),
        .O(\byteShiftReg[4]_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_76 
       (.I0(DataIn1_IBUF[1]),
        .I1(DataIn2_IBUF[1]),
        .O(\byteShiftReg[4]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \byteShiftReg[4]_i_77 
       (.I0(DataIn1_IBUF[7]),
        .I1(DataIn2_IBUF[7]),
        .O(\byteShiftReg[4]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h0015)) 
    \byteShiftReg[4]_i_8 
       (.I0(\FiltroPasoBajas/ordenador/p_33_out ),
        .I1(\FiltroPasoBajas/ordenador/p_35_out ),
        .I2(\FiltroPasoBajas/ordenador/p_34_out ),
        .I3(P_IBUF),
        .O(sel0[6]));
  LUT4 #(
    .INIT(16'h0015)) 
    \byteShiftReg[4]_i_9 
       (.I0(\FiltroPasoBajas/ordenador/p_35_out ),
        .I1(\FiltroPasoBajas/ordenador/p_37_out ),
        .I2(\FiltroPasoBajas/ordenador/p_36_out ),
        .I3(P_IBUF),
        .O(sel0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[0] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(valorCorrelacion[0]),
        .Q(\registroCorrelacion/byteShiftReg_reg_n_0_[0] ),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[10] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_1_in[0]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[11] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_1_in[1]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[12] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_1_in[2]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[13] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_1_in[3]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[14] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_1_in[4]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[1] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(valorCorrelacion[1]),
        .Q(\registroCorrelacion/byteShiftReg_reg_n_0_[1] ),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[2] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(valorCorrelacion[2]),
        .Q(\registroCorrelacion/byteShiftReg_reg_n_0_[2] ),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[3] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(valorCorrelacion[3]),
        .Q(\registroCorrelacion/byteShiftReg_reg_n_0_[3] ),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[4] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(valorCorrelacion[4]),
        .Q(\registroCorrelacion/byteShiftReg_reg_n_0_[4] ),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[5] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(\registroCorrelacion/byteShiftReg_reg_n_0_[0] ),
        .Q(p_0_in[0]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[6] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(\registroCorrelacion/byteShiftReg_reg_n_0_[1] ),
        .Q(p_0_in[1]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[7] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(\registroCorrelacion/byteShiftReg_reg_n_0_[2] ),
        .Q(p_0_in[2]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[8] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(\registroCorrelacion/byteShiftReg_reg_n_0_[3] ),
        .Q(p_0_in[3]),
        .R(Reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \registroCorrelacion/byteShiftReg_reg[9] 
       (.C(P_IBUF_BUFG),
        .CE(1'b1),
        .D(\registroCorrelacion/byteShiftReg_reg_n_0_[4] ),
        .Q(p_0_in[4]),
        .R(Reset_IBUF));
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
