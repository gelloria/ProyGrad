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


module movingAverage # (parameter SAMPLES=128, parameter OSF=8, parameter n=4)(/*Enable, */Reset, DataIn, movAverage);
    //input wire Enable; 
    input wire Reset;
    input wire [$clog2(SAMPLES*OSF)*n+(n-1):0] DataIn;
    output wire [$clog2(SAMPLES*OSF):0] movAverage;
    reg [$clog2(SAMPLES*OSF)*n+(n-1):0] suma;

    always @(*) begin
    	// if (Reset)
    	// begin
    	// 	movAverage  = 0;
    	// end
    	/*else*/
    	if (Reset)
    	begin
    		suma=0;
    	end
    	else begin
    		suma = DataIn[43:33]+DataIn[32:22]+DataIn[21:11]+DataIn[10:0];
    	end
    end

	assign  movAverage = 2*suma [$clog2(SAMPLES*OSF)*n+(n-1):n-2];
	

endmodule


 //    always @*
 //    begin

	// 	if (Reset)
	// 		begin
	// 			sum=0;
	// 		end
	// 	else 
	// 		begin

	// 		//sum = DataIn[4:0]+DataIn[9:5];
	// 			for(i=0; i<n+1; i=i+(H+1))
	// 			begin
	// 				sum = sum + array[i];
	// 			end
	// 		end 

	    
	// end