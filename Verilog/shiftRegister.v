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

module shiftRegister # (parameter SAMPLES=2, parameter OSF=8, parameter n=3) (Clk,Reset,DataIn,DataOut);
input wire Clk;
input wire Reset;
input wire [$clog2(SAMPLES*OSF):0] DataIn;
output wire[$clog2(SAMPLES*OSF)*n+(n-1):0]DataOut;

reg [$clog2(SAMPLES*OSF)*n+(n-1):0] byteShiftReg;
//shift register
always @(posedge Clk)
begin 

	if (Reset)
		begin
		byteShiftReg <= 0;
 
		end
	else 
		begin//                             valor final del registro -  tama;o de cada palabra
 		byteShiftReg <= {byteShiftReg[$clog2(SAMPLES*OSF)*n+(n-1)  -($clog2(SAMPLES*OSF)+1)     :0],DataIn};
		end 
end
assign DataOut = byteShiftReg;

endmodule
