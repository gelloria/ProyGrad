`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
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

module FiltroPB # (parameter SAMPLES=128, parameter OSF=8) (P,Enable,DataIn,DataOut);
	input wire P;
	input wire Enable;
    input wire [SAMPLES*OSF-1:0] DataIn;
    output wire [$clog2(SAMPLES*OSF):0] DataOut;

    wire [SAMPLES*OSF-1:0] InputOrdenado;

    Sort #(.SAMPLES(SAMPLES), .OSF(OSF)) ordenador (.P(P), .DataIn(DataIn), .DataOut(InputOrdenado));

    Sumatoria #(.SAMPLES(SAMPLES), .OSF(OSF)) cantUnos (.Enable(Enable),.Input(InputOrdenado), .Output(DataOut));

endmodule