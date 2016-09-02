`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2016 11:54:31 AM
// Design Name: 
// Module Name: SimSumatoria
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


module SimSumatoria();

    // Inputs
	reg [15:0]Input;


	// Outputs
	wire [5:0]Output;

	// Instantiate the Unit Under Test (UUT)
	Sumatoria uut(.Input(Input), .Output(Output));
	
	initial begin
        // Initialize Inputs
            Input=16'd0;


            #10 Input={4'd5,4'd3,4'd2,4'd6};
            #2
            if(Output==6'd16)
                $display("Success");
            else
                $display("Error");
            
            
            
            #10 Input={4'd2,4'd1,4'd4,4'd6};
            #2
            
            if(Output==6'b001101)
                $display("Success");
            else
                $display("Error");
                            
                            
            #10 Input={4'd5,4'd1,4'd7,4'd6};
            #2
            if(Output==6'd19)
                $display("Success");
            else
                $display("Error");

        end
        
    initial #100 $finish;
endmodule
