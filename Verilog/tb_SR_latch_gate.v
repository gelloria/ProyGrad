
`timescale 1ns/1ps

module tb_SR_latch_gate (); /* this is automatically generated */

	reg  R;
	reg  S;
	wire Q;
	wire  Qbar;

	SR_latch_gate inst_SR_latch_gate (.R(R), .S(S), .Q(Q), .Qbar(Qbar));

	initial begin
		// do something

		R=0;
		S=0;

		#10
		R=0;
		S=1;
		#10
		R=1;
		S=0;
		#10
		R=1;
		S=1;

		$finish;
	end

endmodule
