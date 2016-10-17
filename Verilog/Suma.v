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


module Suma (
    input wire [2+SIZE:0] Input1,
    input wire [2+SIZE:0] Input2,
    output reg[3+SIZE:0] Output
    );
    
    
    always@(*) begin

        Output=Input1+Input2;

    end
    
    
    
    
endmodule
