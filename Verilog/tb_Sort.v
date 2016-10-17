
`timescale 1ns/1ps

module tb_Sort (); /* this is automatically generated */

	parameter SAMPLES = 1;
	parameter OSF     = 4;

	reg                   P;
	reg [SAMPLES*OSF-1:0] DataIn;
	wire [SAMPLES*OSF-1:0] DataOut;

	Sort #(.SAMPLES(SAMPLES), .OSF(OSF)) inst_Sort (.P(P), .DataIn(DataIn), .DataOut(DataOut));

	initial begin
		// do something
		DataIn=12;
		P=1;
		#30
		P=0;

		#30
		DataIn=1;
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
