
`timescale 1ns/1ps

module tb_delayed_and (); /* this is automatically generated */

	
	reg  A;
	reg  B;
	wire  S;

	delayed_and inst_delayed_and (.A(A), .B(B), .S(S));

	initial begin
		// do something
		A=0;
		B=0;
		#10
		A=1;
		B=0;
		#10
		A=0;
		B=1;
		#10
		A=1;
		B=1;
		#10


		$finish;
	end



endmodule
