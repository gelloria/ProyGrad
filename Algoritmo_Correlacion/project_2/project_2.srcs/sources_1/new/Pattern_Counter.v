`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2016 04:52:44 PM
// Design Name: 
// Module Name: Pattern_Counter
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


module Pattern_Counter(Clk,Reset,EN,S1);
    
    input Clk;
    input Reset;
    input EN;
    
    output S1;
    
    //--Internal Variables--
    reg [10:0] Cuenta;
        
    always @(posedge Clk)
        
    if (Reset)
        Cuenta=11'd0;
    else if (EN)
        Cuenta=Cuenta+11'd1;
    else
        Cuenta=Cuenta;
        
    //assign S1=(Cuenta==11'd128);
    
    assign S1=(Cuenta==11'd24);  

endmodule
