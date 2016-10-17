`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2016 02:33:20 AM
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

module BubbleSort # (parameter SAMPLES=2, parameter OSF=8)(
    input Clk, 
    input Reset,
    input [SAMPLES*OSF-1:0] DataIn,
    output reg listo,
    output reg [$clog2(SAMPLES*OSF):0] Output
    );
	reg [$clog2(SAMPLES*OSF):0] var;
	reg [$clog2(SAMPLES*OSF):0]cambios;

	always @(posedge Clk)
	begin
		if (Reset)
			begin
				listo=0;
				cambios=0;
			end
		else 
		cambios=0;

		for(integer i=SAMPLES*OSF; i>0; i=i-1)
			begin
			if (DataIn[i]>DataIn[i-1]) begin
				var=DataIn[i-1];
				DataIn[i-1]=DataIn[i];
				DataIn[i]=DataIn[i-1];
				cambios=cambios+1;
			end

			end 
		 
	end
	assign listo  = (cambios==0);




endmodule