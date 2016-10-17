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


module thermo2bin # (parameter SAMPLES=2, parameter OSF=8) (Input,Output);
	input [7:0]Input;
	output reg[3:0]Output;
	
	
	always @ (Input)
		case(Input)
			8'b00000001: Output=4'd1;
            8'b00000011: Output=4'd2;
            8'b00000111: Output=4'd3;
            8'b00001111: Output=4'd4;
            8'b00011111: Output=4'd5;
            8'b00111111: Output=4'd6;
            8'b01111111: Output=4'd7;
            8'b11111111: Output=4'd8;
            default: Output=4'd0;
			
		endcase
endmodule