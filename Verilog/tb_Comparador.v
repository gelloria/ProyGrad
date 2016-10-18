
`timescale 1ns/1ps

module tb_Comparador (); /* this is automatically generated */

	parameter SAMPLES = 2;
	parameter OSF     = 8;

	reg [$clog2(SAMPLES*OSF):0] DataIn1;
	reg [$clog2(SAMPLES*OSF):0] DataIn2;
	wire                         DataOut;

	Comparador #(
			.SAMPLES(SAMPLES),
			.OSF(OSF)
		) inst_Comparador (
			.DataIn1 (DataIn1),
			.DataIn2 (DataIn2),
			.DataOut (DataOut)
		);

	initial begin
		// do something
		DataIn1=0;
		DataIn2=0;
		#10
		DataIn1=1;
		DataIn2=0;
		#10
		DataIn1=0;
		DataIn2=1;
		#10
		DataIn1=12;
		DataIn2=15;
		#10
		DataIn1=15;
		DataIn2=12;
		#10

		$finish;
	end

endmodule
