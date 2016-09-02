`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2016 07:53:39 PM
// Design Name: 
// Module Name: Signal_Register
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

module Signal_Register 
# (parameter SAMPLES=128, parameter OSF=8)
(
    Clk, 
    Reset, 
    Shift,
    Data_In,
    Data_Out);
//module Signal_Register(Clk, Reset, Shift, Data_In, Data_Out);

//--Input Ports--    
    input Clk;
    input Reset;
    input Shift;
    input Data_In;
        
//--Output Ports--
    output reg [(SAMPLES*OSF)-1:0] Data_Out;
 
    always @ (posedge Clk)
        if(Reset)
            Data_Out=0;
        else if(Shift)
            Data_Out={Data_In,Data_Out[(SAMPLES*OSF)-1:1]};
        else
            Data_Out=Data_Out;
//assign Data_Out = Temp;
    
    
endmodule

