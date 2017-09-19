
`timescale 1ns/1ps

module tb_AlgoritmoCorrelacion (); /* this is automatically generated */

	parameter SAMPLES = 2;
	parameter OSF     = 8;
	parameter n       = 4;

	reg [SAMPLES*OSF-1:0] DataIn1;
	reg [SAMPLES*OSF-1:0] DataIn2;
	reg                   Reset;
	reg                   P;
	reg                   Enable;
	wire                   DataOut;

	AlgoritmoCorrelacion #(.SAMPLES(SAMPLES),.OSF(OSF),.n(n)) inst_AlgoritmoCorrelacion 
		(
			.DataIn1 (DataIn1),
			.DataIn2 (DataIn2),
			.Reset   (Reset),
			.P       (P),
			.Enable  (Enable),
			.DataOut (DataOut)
		);

	initial begin
		// do something
		DataIn1=16'b0000000000000011;
		DataIn2=16'b0000000000000001;
		Enable=0;
		Reset=1;
		P=1;

		#10
		Enable=1;
		Reset=0;

		#10
		P=0;
		
		#50
		DataIn1=16'b1000001000000000;
		DataIn2=16'b0010001000100001;
		P=1;

		#10
		P=0;

		#50
		DataIn1=16'b1010001000100001;
		DataIn2=16'b1010001000100001;
		P=1;

		#10
		P=0;
		#50

		#50
		DataIn1=16'b1010011100100001;
		DataIn2=16'b1010001000100001;
		P=1;

		#10
		P=0;
		#50

		#50
		DataIn1=16'b1010001000100001;
		DataIn2=16'b1010001000100001;
		P=1;

		#10
		P=0;
		#50

		#50
		DataIn1=16'b1010001000111111;
		DataIn2=16'b1010001000100001;
		P=1;

		#10
		P=0;
		#50

		$finish;
	end

endmodule
