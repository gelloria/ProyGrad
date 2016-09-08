`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2016 05:26:03 PM
// Design Name: 
// Module Name: SIM_Pattern_Counter
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


module SIM_Pattern_Counter();
//inputs
	reg Clk;
    reg Reset;
    reg EN;
//outputs  
    wire S1;


    parameter OSF =32;
    parameter NM =128;
initial forever
        begin
            #5 Clk=~Clk;        
        end

    initial begin
    
        Clk=0;
        Reset=0;
        EN=0;
        
        #10
        Reset=1;
        EN=1;
        
        #10
        Reset=0;
        EN=1;



        for(integer i=0; i<100030; i=i+1)
        begin
	        #10
	        EN=0;
	        #10
	        EN=1;
    	end

        

        #10

        $finish;
        
    
    end

    generate 
	    begin : PC
	    Pattern_Counter #(.SAMPLES(NM), .OSF(OSF)) uut(.Clk(Clk),.Reset(Reset),.EN(EN),.S1(S1));
	    end
    endgenerate

    // Pattern_Counter uut(Clk,Reset,EN,S1);
endmodule