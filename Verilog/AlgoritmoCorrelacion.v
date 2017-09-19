`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2016 02:33:20 AM
// Design Name: 
// Module Name: 
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

module AlgoritmoCorrelacion # (parameter SAMPLES=128, parameter OSF=8, parameter n=4) (DataIn1,DataIn2,Reset, P, Enable, DataOut);
    input wire [SAMPLES*OSF-1:0] DataIn1;
    input wire [SAMPLES*OSF-1:0] DataIn2;
    input wire Reset;
    input wire P;
    input wire Enable;
    output wire DataOut;

    wire [SAMPLES*OSF-1:0] resultadoXnor;
    wire [$clog2(SAMPLES*OSF):0] valorCorrelacion;
    wire [$clog2(SAMPLES*OSF)*n+(n-1):0] nValoresCorrelacion ;
    wire [$clog2(SAMPLES*OSF):0] valorMediaMovil;

    //XNOR
    Multiplicador #(.SAMPLES(SAMPLES), .OSF(OSF)) MultiplicacionXnor 
    (
      .A(DataIn1),
      .B(DataIn2),
      .C(resultadoXnor)
    );

    FiltroPB #(.SAMPLES(SAMPLES),.OSF(OSF)) FiltroPasoBajas
    (
      .P       (P),
      .Enable  (Enable),
      .DataIn  (resultadoXnor),
      .DataOut (valorCorrelacion)
    );

    shiftRegister #(.SAMPLES(SAMPLES), .OSF(OSF), .n(n)) registroCorrelacion 
    (
      .Clk     (P),
      .Reset   (Reset),
      .DataIn  (valorCorrelacion),
      .DataOut (nValoresCorrelacion)
    );

    movingAverage #(.SAMPLES(SAMPLES), .OSF(OSF),.n(n)) calculoMediaMovil
    (
      .Reset      (Reset),
      .DataIn     (nValoresCorrelacion),
      .movAverage (valorMediaMovil)
    );

    Comparador #(.SAMPLES(SAMPLES), .OSF(OSF)) ComparadorContraMedia 
    (
      .Enable  (Enable),
      .DataIn1 (valorCorrelacion),
      .DataIn2 (valorMediaMovil),
      .DataOut (DataOut)
    );



endmodule