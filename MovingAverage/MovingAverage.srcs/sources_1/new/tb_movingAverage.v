
`timescale 1ns/1ps

module tb_movingAverage (); /* this is automatically generated */

	parameter SAMPLES = 2;
	parameter OSF     = 8;
	parameter n       = 3;

	reg                                 Enable;
	reg                                 Reset;
	reg [$clog2(SAMPLES*OSF)*n+(n-1):0] DataIn;
	wire         [$clog2(SAMPLES*OSF):0] movAverage;

	movingAverage #(.SAMPLES(SAMPLES), .OSF(OSF), .n(n)) inst_movingAverage
	 (
			.Enable     (Enable),
			.Reset      (Reset),
			.DataIn     (DataIn),
			.movAverage (movAverage)
		);
	initial begin
		// do something
		DataIn=15'b000000000000000;
		Enable=0;
		Reset=1;
		#10
		DataIn=15'b000000000100001;
		Enable=1;
		Reset=0;
		#10
		DataIn=15'b000000010000100;
		//Enable=0;
		#10
		Enable=1;
		#10
		DataIn=15'b100000000100001;
		#10

		$finish;
	end


endmodule
