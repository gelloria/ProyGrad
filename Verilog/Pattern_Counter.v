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


module Pattern_Counter 
# (parameter SAMPLES=128, parameter OSF=8)

(Clk,Reset,EN,S1);
    
    input Clk;
    input Reset;
    input EN;
    
    output S1;
    
    //--Internal Variables--
    reg [$clog2(SAMPLES*OSF):0] Cuenta;
        
    always @(posedge Clk)
    begin
        
    if (Reset)
        Cuenta=0;
    else if (EN)
        Cuenta=Cuenta+1;
    else
        Cuenta=Cuenta;
    
    end     
   assign S1=(Cuenta==(SAMPLES*OSF));  
  

endmodule
