`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2016 08:21:41 PM
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



module delayed_and (A, B, S);
input wire A;
input wire B;
output wire S;

//and a1(S,A,B);
// wire N;
// wire M;

// and(N,A,B);
// not(M,N);
// not(S,M);

assign M = (A && B);
assign N = !M;
assign S = !N;

endmodule