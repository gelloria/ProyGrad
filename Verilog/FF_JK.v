`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2016 04:39:04 PM
// Design Name: 
// Module Name: FF_JK
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


module FF_JK(Clk, J, K, Q);
    //--Input Ports--  
    input Clk;
    input J;
    input K;
    
    //--Output Ports--  
    output reg Q;
    
    //--Internal Variables--
    wire D;
        
    assign D=((J&~Q) | (~K&Q));
        
    always @ (posedge Clk)
        Q=D;


endmodule
