
`timescale 1ns/1ps

module tb_thermo2bin (); /* this is automatically generated */

	parameter SAMPLES = 128;
	parameter OSF     = 8;

	reg [7:0] Input;
	wire [3:0] Output;

	thermo2bin #(.SAMPLES(SAMPLES), .OSF(OSF)) inst_thermo2bin (.Input(Input), .Output(Output));

	initial begin
		// do something
		Input=0;

		#10
		Input=1;
		#10
		Input=2;
		#10
		Input=3;
		#10
		Input=4;
		#10
		Input=7;

		$finish;
	end


endmodule
