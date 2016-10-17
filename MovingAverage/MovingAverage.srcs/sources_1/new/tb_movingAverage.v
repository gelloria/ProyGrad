
`timescale 1ns/1ps

module tb_movingAverage (); /* this is automatically generated */
	reg Clk;

	// clock
	initial begin
		Clk = 0;
		forever #5 Clk = ~Clk;
	end

	parameter SAMPLES = 2;
	parameter OSF     = 8;
	parameter n       = 2;

	reg                         Reset;
	reg [$clog2(SAMPLES*OSF):0] Value;
	wire [$clog2(SAMPLES*OSF):0] Output;

	movingAverage #(
			.SAMPLES(SAMPLES),
			.OSF(OSF),
			.n(n)
		) inst_movingAverage (
			.Clk    (Clk),
			.Reset  (Reset),
			.Value  (Value),
			.Output (Output)
		);

	initial begin
		// do something
		Value=0;
		Reset=1;
		#10
		Reset=0;
		Value=3;
		#10
		Value=6;
		#10
		Value=8;
		#10
		Value=10;
		#10
		Value=12;
		#10
		repeat(10)@(posedge Clk);
		$finish;
	end

endmodule
