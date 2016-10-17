`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2016 11:47:09 AM
// Design Name: 
// Module Name: Sumatoria
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


module Sumatoria # (parameter SAMPLES=2, parameter OSF=8) (Input,Output);
    input wire [SAMPLES*OSF-1:0] Input;
    output reg [$clog2(SAMPLES*OSF):0] Output;
    wire [SAMPLES*OSF/2-1:0] suma;

   	genvar j;
    generate for(j=0; j<SAMPLES*OSF; j=j+8)
       begin: t2bs
       		thermo2bin t2b(Input[j+7:j],suma[(j/2)+3:j/2]);
       end
    endgenerate

	always @(Input or suma) begin
		Output=suma[3:0]+suma[7:4];
	end

endmodule

 //    always @(*)
	// begin
	// if(reset)
	// begin
	// 	Output=0;
	// end

	// else begin
	// 	for(i=0; i<SAMPLES*OSF; i=i+1)
	// 	if(Input[i]==1)
	// 		begin
	// 		suma = suma +1;
	// 		end
	// 	else begin
	// 		Output=suma;
	// 		i= SAMPLES*OSF;
	// 	end

	// 	end
	// end
    
    
//endmodule


	// else begin
