
`timescale 1ns/1ps

module tb_shiftR (); /* this is automatically generated */

	reg clk;

	// clock
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end

	//reg  C;
	reg  SI;
	reg RST;
	wire PO;

	shiftR inst_shiftR (.C(clk), .SI(SI), .RST(RST), .PO(PO));
	
		initial begin
			// do something)
		SI=1;
		RST=1;
		#10
		RST=0;

		#150


		$finish;
	end

endmodule
