`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2016 02:47:32 PM
// Design Name: 
// Module Name: FlagCounter
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


module FlagCounter(Clk, Reset, EN, S1,S2,S3);

    //--Inputs--
    input Clk;
    input EN;
    input Reset;

    //--Outputs--
    output S1,S2,S3;

    //--Internal Variables--
    reg [3:0] Cuenta;
	
	always @(posedge Clk)
	   if (Reset)
	       Cuenta=4'd0;    
	   else if ((EN)&(Cuenta!=4'd5))
	       Cuenta=Cuenta+4'd1;
	   else
	       Cuenta=Cuenta;
	
	assign S1=(Cuenta==2); //Activa bandera
    assign S2=(Cuenta==4); //Desactiva bandera
    assign S3=(Cuenta==1); //Habilida registro con valor de correlacion


endmodule
