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

module Comparador # (parameter SAMPLES=2, parameter OSF=8) (DataIn1,DataIn2,DataOut);
    input wire [$clog2(SAMPLES*OSF):0] DataIn1;//actual
    input wire [$clog2(SAMPLES*OSF):0] DataIn2;//media movil
    output wire DataOut;

    reg salida;


	always @ (DataIn1 or DataIn2)
	begin
		if (DataIn1>=DataIn2) 
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