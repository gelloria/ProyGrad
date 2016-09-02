`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2016 06:57:22 PM
// Design Name: 
// Module Name: Maquina_Estados
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


module Maquina_Estados(Clk,Reset,Read,ESR,FCE,Shift_PR,Shift_SR,EPC,EFC);
    
    //--Input Ports-- 
    input Clk;
    input Reset;
    input Read;
    input ESR;
    input FCE;
    
    //--Output Ports-- 
    output reg Shift_PR;
    output reg Shift_SR;
    output reg EPC;
    output reg EFC;
    
    //registros de estado
    reg [2:0] PRE,FUT;
    parameter T0=3'b000, T1=3'b001,T2=3'b010,T3=3'b011, T4=3'b100, T5=3'b101,T6=3'b110,T7=3'b111;
    
    //registro de transicion de estado
    always @(negedge Clk or posedge Reset)
        if(Reset)
            PRE=0;
        else
            PRE=FUT;
                
    //red de estado futuro
    always  @(PRE or Read or ESR or FCE)
        case (PRE)
            T0:if (Read)
                    FUT=T1;
                else
                    FUT=T0;
            T1: FUT=T2;
            T2:if(Read)
                    FUT=T2;
                else
                    FUT=T3;
            T3: if (ESR)
                    FUT=T4;
                else
                    FUT=T0;
            T4: if (Read)
                    FUT=T5;
                else
                    FUT=T4;
            T5: FUT=T6;
            T6: if (FCE)
                    FUT=T7;
                else
                    FUT=T6;
            T7: if (Read)
                    FUT=T7;
                else
                    FUT=T4;
        endcase
            
    //asignacion de salidas
    always @ (PRE)
        case (PRE)
        
            T0:begin
                    Shift_PR=1'b0;
                    Shift_SR=1'b0;
                    EPC=1'b0;
                    EFC=1'b0;                    
                end
            T1:begin
                    Shift_PR=1'b1;
                    Shift_SR=1'b0;
                    EPC=1'b1;
                    EFC=1'b0;                    
                end
            T2:begin
                    Shift_PR=1'b0;
                    Shift_SR=1'b0;
                    EPC=1'b0;
                    EFC=1'b0;  
                end
            T3:begin
                    Shift_PR=1'b0;
                    Shift_SR=1'b0;
                    EPC=1'b0;
                    EFC=1'b0;
                end
            T4:begin
                    Shift_PR=1'b0;
                    Shift_SR=1'b0;
                    EPC=1'b0;
                    EFC=1'b1;
                end
            T5:begin
                    Shift_PR=1'b0;
                    Shift_SR=1'b1;
                    EPC=1'b0;
                    EFC=1'b1;
                end
            T6:begin
                    Shift_PR=1'b0;
                    Shift_SR=1'b0;
                    EPC=1'b0;
                    EFC=1'b1;
                end
            T7:begin
                    Shift_PR=1'b0;
                    Shift_SR=1'b0;
                    EPC=1'b0;
                    EFC=1'b1;
                end
                   
        endcase
    
    
endmodule
