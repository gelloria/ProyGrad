`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2016 02:33:20 AM
// Design Name: 
// Module Name: RegistroCorrelacion
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


module RegistroCorrelacion(Clk, Reset, LD, Input, Output);
    input Clk, Reset;
    input LD;
    input[10:0] Input;
    output reg[10:0] Output;
    
    always @(posedge Clk)
        if(Reset)
            Output=11'd0;
        else if(LD)
            Output=Input;
        else
            Output=Output;

endmodule
