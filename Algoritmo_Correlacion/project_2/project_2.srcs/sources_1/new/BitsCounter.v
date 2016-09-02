`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2016 02:27:11 AM
// Design Name: 
// Module Name: BitsCounter
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


module BitsCounter(Clk, Reset, EN, S);
    input Clk, Reset;
    input EN;
    
    output S;
    
    reg[3:0] Cuenta;
    
    always @ (posedge Clk)
        if(Reset||Cuenta==4'd8)
            Cuenta=4'd0;
        else if(EN)
            Cuenta=Cuenta+4'd1;
        else
            Cuenta=Cuenta;
            
    assign S=(Cuenta==4'd8);
    
endmodule
