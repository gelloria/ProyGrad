
`timescale 1ns/1ps

module tb_shiftRegister (); /* this is automatically generated */

	reg Clk;

	// clock
	initial begin
		Clk = 0;
		forever #5 Clk = ~Clk;
	end

	// reset

	parameter SAMPLES = 2;
	parameter OSF     = 8;
	parameter n       = 3;

	reg                                 Reset;
	reg         [$clog2(SAMPLES*OSF):0] DataIn;
	wire [$clog2(SAMPLES*OSF)*n+(n-1):0] DataOut;

	shiftRegister #(
			.SAMPLES(SAMPLES),
			.OSF(OSF),
			.n(n)
		) inst_shiftRegister (
			.Clk     (Clk),
			.Reset   (Reset),
			.DataIn  (DataIn),
			.DataOut (DataOut)
		);

	initial begin
		// do something
		DataIn=1;
		Reset=1;
		#10
		DataIn=1;
		Reset=0;
		#10
		DataIn=3;
		#10
		DataIn=4;
		#10
		DataIn=7;




		repeat(10)@(posedge Clk);
		$finish;
	end


endmodule
