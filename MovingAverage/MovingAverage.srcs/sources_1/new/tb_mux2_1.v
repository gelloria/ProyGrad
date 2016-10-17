
`timescale 1ns/1ps

module tb_mux2_1 (); /* this is automatically generated */

	wire  q;
	reg  i1;
	reg  i0;
	reg  sel;

	mux2_1 inst_mux2_1 (.q(q), .i1(i1), .i0(i0), .sel(sel));

	initial begin
		// do something
		i0=0;
		i1=1;

		#10
		sel=0;
		#10
		sel=1;
		#30
		i0=1;
		i1=0;
		#30
		sel=0;
		#10
		sel=1;
		#10


		$finish;
	end

endmodule
