
`timescale 1ns/1ps

module tb_FiltroPB (); /* this is automatically generated */

	parameter SAMPLES = 2;
	parameter OSF     = 8;

	reg                   P;
	reg [SAMPLES*OSF-1:0] DataIn;
	wire[$clog2(SAMPLES*OSF):0] DataOut;

	FiltroPB #(.SAMPLES(SAMPLES), .OSF(OSF)) inst_FiltroPB (.P(P), .DataIn(DataIn), .DataOut(DataOut));

	initial begin
		// do something
		DataIn=12;
		P=1;
		#30
		P=0;

		#30
		DataIn=31;
		P=1;
		#30
		P=0;

		#30
		DataIn=2;
		P=1;
		#30
		P=0;

		#30
		DataIn=4;
		P=1;
		#30
		P=0;

		#30
		DataIn=14;
		P=1;
		#30
		P=0;
		#30

		$finish;
	end

endmodule
