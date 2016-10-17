
`timescale 1ns/1ps

module tb_DecosSuma (); /* this is automatically generated */


	parameter SAMPLES = 128;
	parameter OSF     = 8;

	reg    [SAMPLES*OSF-1:0] Input;
	wire [(SAMPLES*OSF)/2-1:0] con_Output;
	//wire [$clog2(SAMPLES*OSF):0] Output;

	DecosSuma #(.SAMPLES(SAMPLES), .OSF(OSF)) inst_DecosSuma (.Input(Input), .Output(con_Output));

	// Sumatoria #(.SIZE(SIZE)) inst_Suma (.Input1(Input1), .Input2(Input2), .Output(Output));
	

	initial begin
		// do something
		Input = 0;

		for(integer i=0;i<(SAMPLES*OSF)/2;i=i+1) begin
	        #5
			Input = i;
	    end

		$finish;
	end



endmodule
