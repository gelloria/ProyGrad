`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2016 07:48:50 PM
// Design Name: 
// Module Name: Correlacion
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

//Diseño paramétrizado para 128 muestras y un OSF variable
module Correlacion (Bitstream,Clk,Read,Reset,Data_Out,Flag);

    parameter OSF =32;
    parameter NM =128;
    
    input Bitstream;
    input Clk;
    input Read;
    input Reset;
    
    output [10:0] Data_Out;
    output Flag;
    
    wire [(OSF*NM)-1:0] Patron;
    wire [(OSF*NM)-1:0] Muestra;
    wire [(OSF*NM)-1:0] Multiplicacion;
    wire [511:0] DatosSuma;
    wire[10:0] Correlacion;
///////////////
    
    wire Shift_PR,Shift_SR;
    wire EPC,EFC;
    wire S1, S2, S3, S4, S5;
    wire FlagP;
    
    //S1 Se;al que habilita la escritura en el registro de muestra
    //S2: Se;al que activa la bandera
    //S3: FCE se;al que avisa cuando se desactiva la bandera
    //S4: Se;al que se activa antes de activar la bandera
    //S5: Se;al que indica cuando se ha escrito el octavo bit
   //
    //Signal_Register RPatron(Clk, Reset, Shift_PR, Bitstream, Patron);
    //Signal_Register RMuestra(Clk, Reset, Shift_SR, Bitstream, Muestra);
    generate 
    Signal_Register #(.SAMPLES(NM), .OSF(OSF)) RPatron(.Clk(Clk), .Reset(Reset), .Shift(Shift_PR), .Data_In(Bitstream), .Data_Out(Patron));
    Signal_Register #(.SAMPLES(NM), .OSF(OSF)) RMuestra(.Clk(Clk), .Reset(Reset), .Shift(Shift_SR), .Data_In(Bitstream), .Data_Out(Muestra));
    endgenerate
    
    assign FCE = S3;
    assign Flag=FlagP;
    //assign Flag=FlagP&S5;
    //Maquina_Estados Control(Clk,Reset,Read,ESR,FCE,Shift_PR,Shift_SR,EPC,EFC);
    Maquina_Estados Control(Clk,Reset,Read,ESR,1'd1,Shift_PR,Shift_SR,EPC,EFC);
    
    BitsCounter CBits(Clk, Reset, Shift_SR, S5);
    Pattern_Counter ContadorPatron(Clk,Reset,EPC,S1);
    FlagCounter ContadorBandera(Clk, Reset|S5, EFC, S2,S3, S4);
    
    FF_JK FFA(Clk, S1, Reset, ESR);
    FF_JK FFB(Clk, S2, S3|Reset, FlagP);
    
    Multiplicador Multiplcador(Patron,Muestra,Multiplicacion);
    
    DecosSuma Deco(Multiplicacion,DatosSuma);
    
    Sumatoria Sum(DatosSuma, Correlacion);
    
    RegistroCorrelacion Resultado(Clk, Reset, S5, Correlacion, Data_Out);
    
endmodule
