`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2016 08:21:41 PM
// Design Name: 
// Module Name: Multiplicador
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


module Multiplicador # (parameter SAMPLES=128, parameter OSF=8) (A,B,C);
    input [SAMPLES*OSF-1:0] A;
    input [SAMPLES*OSF-1:0] B;
    output [SAMPLES*OSF-1:0] C;
    
    assign C= ~(A^B);
    //assign C = A|B;
    //assign C=A-^B;
endmodule
