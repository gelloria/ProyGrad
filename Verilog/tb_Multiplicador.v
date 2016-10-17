
`timescale 1ns/1ps

module tb_Multiplicador (); /* this is automatically generated */

	parameter SAMPLES = 1;
	parameter OSF     = 8;

	reg [SAMPLES*OSF-1:0] A;
	reg [SAMPLES*OSF-1:0] B;
	wire [SAMPLES*OSF-1:0] C;

	Multiplicador #(.SAMPLES(SAMPLES), .OSF(OSF)) inst_Multiplicador (.A(A), .B(B), .C(C));

	initial begin
		// do something
		A=0;
		B=0;
		#10
		A=1;
		B=1;
		#10
		A=1;
		B=0;
		#10
		A=3;
		B=3;
		#10
		A=4;
		B=4;
		#10



		$finish;
	end

endmodule
