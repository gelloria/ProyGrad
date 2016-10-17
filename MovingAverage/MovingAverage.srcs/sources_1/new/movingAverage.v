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


module movingAverage # (parameter SAMPLES=2, parameter OSF=8, parameter n=3)(Clk,Reset,DataIn,movAverage);
    input Clk; 
    input Reset;
    input wire [$clog2(SAMPLES*OSF)*n+(n-1):0] DataIn;
    output wire [$clog2(SAMPLES*OSF):0] movAverage;
   
    localparam H = $clog2(SAMPLES*OSF);

    //example array

	reg [H:0] array [0:n]; = {1,2,3};

	//###############################################
	
	wire [7:0] summation_steps [n-2 : 0];//container for all sumation steps

	genvar i;
	generate
	    assign summation_steps[0] = array[0] + array[1];//for less cost starts witch first sum (not array[0])

	    for(i=0; i<n-2; i=i+1) begin
	        assign summation_steps[i+1] = summation_steps[i] + array[i+2];
	    end
	endgenerate
	wire [7:0] result;
	assign result = summation_steps[cells-2];




	
	assign movAverage  = sum;
	

endmodule
