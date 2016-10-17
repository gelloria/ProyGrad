`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2016 03:41:53 PM
// Design Name: 
// Module Name: movingAverage
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

module mux2_1(q,i1,i0,sel);

    input wire i0;
    input wire i1;  
    input wire sel;
    output reg q;
    
    // not (u,sel);
    // and (m,sel,i1);
    // and (n,u,i0);
    // or (q,m,n);
	always @( sel or i0 or i1 )
	begin
	   case( sel )
	       0 : q = i0;
	       1 : q = i1;
	   endcase
	end
endmodule

