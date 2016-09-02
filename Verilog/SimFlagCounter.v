`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2016 04:31:56 PM
// Design Name: 
// Module Name: SimFlagCounter
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


module SimFlagCounter();

    // Inputs
	reg Clk;
	reg EN;
	reg Reset;

	// Outputs
	wire S1,S2;

	// Instantiate the Unit Under Test (UUT)
	FlagCounter uut(.Clk(Clk),.Reset(Reset),.EN(EN),.S1(S1),.S2(S2));
	

	initial begin
		// Initialize Inputs
			Clk = 0;
			Reset = 1;
			EN = 0;

		// Wait 100 ns for global reset to finish
			#60 Reset=0;
      
		// Add stimulus here
		    #10 EN=1;
            #60 EN=0;

		end
      
	initial forever
		begin
			#10 Clk=1;
			#10 Clk=0;
		end

endmodule
