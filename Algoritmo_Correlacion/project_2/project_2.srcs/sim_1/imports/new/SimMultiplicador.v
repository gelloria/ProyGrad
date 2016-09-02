`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2016 09:29:56 PM
// Design Name: 
// Module Name: SimMultiplicador
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


module SimMultiplicador();
    
    reg [1023:0]A;
    reg [1023:0]B;
    
    wire [1023:0]C;
    
    initial begin
    
        A=0;
        B=0;
         
        
        #10
        A=5;
        
        #10
        B=13;
        
        #10
        A=11;
        
        #10
        A=15;
        B=15;
        
        #10
        $finish;
        
    
    end
    
    Multiplicador uut(A,B,C);
endmodule
