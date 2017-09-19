`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: 
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

module Comparador # (parameter SAMPLES=128, parameter OSF=8) (Enable,DataIn1,DataIn2,DataOut);
	input wire Enable;	
    input wire [$clog2(SAMPLES*OSF):0] DataIn1;//actual
    input wire [$clog2(SAMPLES*OSF):0] DataIn2;//media movil
    output wire DataOut;

    reg salida;


	always @ (*)
	begin
		if (DataIn1>=DataIn2&&Enable) 
		begin
			salida=1'd1;
		end
		else
		begin
			salida=1'd0;
		end
	end
	assign DataOut = salida;

endmodule