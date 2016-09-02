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


module Multiplicador(A,B,C);
    input [1023:0] A;
    input [1023:0] B;
    output [1023:0] C;
    
    assign C= ~(A^B);
    //assign C = A|B;
    //assign C=A-^B;
endmodule
