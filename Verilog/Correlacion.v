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

    parameter OSF =8;
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
    //wire [511:0] DatosSuma;
    wire[$clog2(NM*OSF):0] Corrlacion;
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
    generate 
        begin : Signal_Regs 
        Signal_Register #(.SAMPLES(NM), .OSF(OSF)) RPatron(.Clk(Clk), .Reset(Reset), .Shift(Shift_PR), .Data_In(Bitstream), .Data_Out(Patron));
        Signal_Register #(.SAMPLES(NM), .OSF(OSF)) RMuestra(.Clk(Clk), .Reset(Reset), .Shift(Shift_SR), .Data_In(Bitstream), .Data_Out(Muestra));
        end
    endgenerate
    
    assign FCE = S3;
    assign Flag=FlagP;
    //assign Flag=FlagP&S5;
    //Maquina_Estados Control(Clk,Reset,Read,ESR,FCE,Shift_PR,Shift_SR,EPC,EFC);
    Maquina_Estados Control(Clk,Reset,Read,ESR,1'd1,Shift_PR,Shift_SR,EPC,EFC);
    
    generate 
        begin : Counters
        BitsCounter #(.OSF(OSF)) CBits (.Clk(Clk), .Reset(Reset), .EN(Shift_SR), .S(S5));
        Pattern_Counter #(.SAMPLES(NM), .OSF(OSF)) ContadorPatron(.Clk(Clk),.Reset(Reset),.EN(EPC),.S1(S1));
        end
    endgenerate

    FlagCounter ContadorBandera(Clk, Reset|S5, EFC, S2,S3, S4);
    
    FF_JK FFA(Clk, S1, Reset, ESR);
    FF_JK FFB(Clk, S2, S3|Reset, FlagP);

    generate 
        begin : Multiplier
        Multiplicador 
        #(.SAMPLES(NM), .OSF(OSF)) Multiplcador  
        (.A(Patron),.B(Muestra),.C(Multiplicacion));
        end
    endgenerate

    generate 
        begin : Deco_filtro
        DecosSuma  #(.SAMPLES(NM), .OSF(OSF)) Deco(.Input(Multiplicacion),.Output(Corrlacion));
        end 
    endgenerate


    generate 
        begin: Correlacio_Reg
        RegistroCorrelacion #(.SAMPLES(NM), .OSF(OSF)) Resultado  (Clk, Reset, S5, Corrlacion, Data_Out);
        end
    endgenerate
endmodule
