
`timescale 1ns/1ps

module tb_Sumatoria (); /* this is automatically generated */

	parameter SAMPLES = 2;
	parameter OSF     = 8;

	reg       [SAMPLES*OSF-1:0] Input;
	wire [$clog2(SAMPLES*OSF):0] Output;

	Sumatoria #(.SAMPLES(SAMPLES), .OSF(OSF)) inst_Sumatoria (.Input(Input), .Output(Output));

	initial begin
		// do something
		Input=0;

		#10
		Input=16'b0000000000000001;
		#10
		Input=16'b0000000000000011;
		#10
		Input=16'b0000000000000111;
		#10
		Input=16'b0000000000001111;
		#10
		Input=16'b0000000000011111;
		#10

		$finish;
	end
endmodule
