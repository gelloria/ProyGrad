`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2016 11:47:09 AM
// Design Name: 
// Module Name: Sumatoria
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


module Suma # (parameter SAMPLES=128, parameter OSF=8, parameter SIZE) (Input1,Input2,Output);
    input wire [$clog2(SAMPLES*OSF)+SIZE:0] Input1;
    input wire [$clog2(SAMPLES*OSF)+SIZE:0] Input2;
    output reg [$clog2(SAMPLES*OSF)+SIZE+1:0] Output;
    
    always@(*) begin
        Output=Input1+Input2;
    end

endmodule
