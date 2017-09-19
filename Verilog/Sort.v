`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2016 02:33:20 AM
// Design Name: 
// Module Name: 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Sort # (parameter SAMPLES=128, parameter OSF=8) (P,DataIn,DataOut);
	input wire P;//P=1 > precarga, P=0 > sortingex
    input wire [SAMPLES*OSF-1:0] DataIn;
    output reg [SAMPLES*OSF-1:0] DataOut;

	wire [SAMPLES*OSF-1:0] R;
	wire [SAMPLES*OSF-1:0] S;
	wire [SAMPLES*OSF-1:0] Q;
	wire [SAMPLES*OSF-1:0] Qbar;

	wire salAnd[SAMPLES*OSF-2:0];

	//reg [SAMPLES*OSF-1:0] D;

	genvar j;
    generate for(j=0; j<SAMPLES*OSF; j=j+1)
       begin: SR_latches
       		SR_latch_gate sr_latch(R[j],S[j],Q[j],Qbar[j]);
            
       end
    endgenerate

// comienza instanciacion de muxes
	mux2_1 mux_s(S[0],DataIn[0],salAnd[0],P);//q,i1,i0,sel
	mux2_1 mux_r(R[0],!DataIn[0],1'b0,P);//q,i1,i0,sel

    genvar k;//instancia k muxes
    generate for(k=1; k<(SAMPLES*OSF-1); k=k+1)
       begin: muxes2_1
       		mux2_1 mux_s(S[k],DataIn[k],salAnd[k],P);//q,i1,i0,sel
			mux2_1 mux_r(R[k],!DataIn[k],salAnd[k-1],P);//q,i1,i0,sel
       end
    endgenerate

    mux2_1 mux_su(S[SAMPLES*OSF-1],DataIn[SAMPLES*OSF-1],1'b0,P);//q,i1,i0,sel
	mux2_1 mux_ru(R[SAMPLES*OSF-1],!DataIn[SAMPLES*OSF-1],salAnd[SAMPLES*OSF-2],P);//q,i1,i0,sel
//termina instanciacion de muxes


	genvar l;
    generate for(l=0; l<(SAMPLES*OSF-1); l=l+1)
       begin: delayed_ands
       		delayed_and ands (Qbar[l],Q[l+1],salAnd[l]);//A, B, Sal
       end
    endgenerate

	always @(*)
	begin//precarga
		if (!P)
			begin
			DataOut = Q[SAMPLES*OSF-1:0];
			end
		// else 
		// 	begin
		// 	DataOut=0;
		// 	end	 
	end
	//assign DataOut = D;


endmodule