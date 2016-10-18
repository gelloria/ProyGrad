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

module AlgoritmoCorrelacion # (parameter SAMPLES=2, parameter OSF=8) (DataIn1,DataIn2,DataOut);
    input wire [SAMPLES*OSF-1:0] DataIn1;
    input wire [SAMPLES*OSF-1:0] DataIn2;
    output wire DataOut;

    // parameter SAMPLES = 2;
    // parameter OSF     = 8;
    parameter n       = 3;

    wire resultadoXnor;
    wire [$clog2(SAMPLES*OSF):0] valorCorrelacion;
    wire [$clog2(SAMPLES*OSF)*n+(n-1):0] nValoresCorrelacion ;
    wire [$clog2(SAMPLES*OSF):0] valorMediaMovil;

    //XNOR
    Multiplicador #(.SAMPLES(SAMPLES), .OSF(OSF)) MultiplicacionXnor 
    (
      .A(DataIn1),
      .B(DataIn1),
      .C(resultadoXnor)
    );

    FiltroPB #(.SAMPLES(SAMPLES), .OSF(OSF)) FiltroContador 
    (
      .P(P),
      .DataIn(resultadoXnor),
      .DataOut(valorCorrelacion)
    );

    shiftRegister #(.SAMPLES(SAMPLES), .OSF(OSF), .n(n)) registroCorrelacion 
    (
      .Clk     (Clk),
      .Reset   (Reset),
      .DataIn  (valorCorrelacion),
      .DataOut (nValoresCorrelacion)
    );

    movingAverage #(.SAMPLES(SAMPLES), .OSF(OSF), .n(n)) calculoMediaMovil
    (
      .Enable     (Enable),
      .Reset      (Reset),
      .DataIn     (nValoresCorrelacion),
      .movAverage (valorMediaMovil)
    );

    Comparador #(.SAMPLES(SAMPLES), .OSF(OSF)) ComparadorContraMedia
    (
      .DataIn1 (valorCorrelacion),
      .DataIn2 (valorMediaMovil),
      .DataOut (DataOut)
    );



endmodule