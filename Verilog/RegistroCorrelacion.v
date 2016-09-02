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


module RegistroCorrelacion # (parameter SAMPLES=128, parameter OSF=8)(Clk, Reset, LD, Input, Output);
    input Clk, Reset;
    input LD;
    input[$clog2(SAMPLES*OSF):0] Input;
    output reg[$clog2(SAMPLES*OSF):0] Output;
    
    always @(posedge Clk)
        if(Reset)
            Output=0;
        else if(LD)
            Output=Input;
        else
            Output=Output;

endmodule
