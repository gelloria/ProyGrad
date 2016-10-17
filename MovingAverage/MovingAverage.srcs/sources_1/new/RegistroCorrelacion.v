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


module RegistroCorrelacion # (parameter SAMPLES=128, parameter OSF=8)(
    input Clk, 
    input Reset,
    input LD,
    input[OSF-1:0] Input,
    output wire[(SAMPLES*OSF)-1:0] Output
    );

    reg [(SAMPLES*OSF)-1:0] tmp; 
    
    always @(posedge Clk)
    begin
    	if(Reset)
    	begin
    		tmp=0;
    	end
        else if(LD)
        begin
        	tmp = {tmp[(SAMPLES*OSF)-1-OSF:0], Input};
        end
    end
    assign Output  = tmp; 
        
endmodule

