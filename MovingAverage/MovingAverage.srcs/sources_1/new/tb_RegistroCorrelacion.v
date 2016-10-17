
`timescale 1ns/1ps

module tb_RegistroCorrelacion (); /* this is automatically generated */

	reg Clk;

	// clock
	initial begin
		Clk = 0;
		forever #5 Clk = ~Clk;
	end

	parameter SAMPLES = 10;
	parameter OSF     = 8;

	reg                     Reset;
	reg                     LD;
	reg           [OSF-1:0] Input;
	wire [(SAMPLES*OSF)-1:0] Output;

	RegistroCorrelacion #(
			.SAMPLES(SAMPLES),
			.OSF(OSF)
		) inst_RegistroCorrelacion (
			.Clk    (Clk),
			.Reset  (Reset),
			.LD     (LD),
			.Input  (Input),
			.Output (Output)
		);

	initial begin
		Input=1;
		Reset=1;
		LD=0;
		#10
		Reset=0;
		LD=1;
		#30
		Input=3;
		#150
		$finish;
	end

endmodule
