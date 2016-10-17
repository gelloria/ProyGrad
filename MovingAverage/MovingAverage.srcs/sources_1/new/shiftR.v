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

module shiftR (C, SI,RST, PO);
input  C,SI,RST; 
output wire[7:0] PO; 
reg [7:0] tmp; 

 
  always @(posedge C) 
  begin 

    if(RST==1)
    begin
      tmp=0;
      end
    else
    begin
      tmp <= {tmp[6:0], SI};
    end 
  end 
  assign PO  = tmp; 

endmodule 