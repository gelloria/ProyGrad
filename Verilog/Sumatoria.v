`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2016 11:47:09 AM
// Design Name: 
// Module Name: Sumatoria
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



module Sumatoria # (parameter SAMPLES=128, parameter OSF=8) (Enable,Input,Output);
    input wire Enable;
    input wire [SAMPLES*OSF-1:0] Input;
    output reg [$clog2(SAMPLES*OSF):0] Output;
    wire [SAMPLES*OSF/2-1:0] suma;

   	genvar j;
    generate for(j=0; j<SAMPLES*OSF; j=j+8)
       begin: t2bs
       		thermo2bin t2b(Input[j+7:j],suma[(j/2)+3:j/2]);
       end
    endgenerate

	always @(*) begin
		if (Enable) begin
			Output=suma[511:508] +suma[507:504] +suma[503:500] +suma[499:496] +suma[495:492] +suma[491:488] +suma[487:484] +suma[483:480] +suma[479:476] +suma[475:472] +suma[471:468] +suma[467:464] +suma[463:460] +suma[459:456] +suma[455:452] +suma[451:448] +suma[447:444] +suma[443:440] +suma[439:436] +suma[435:432] +suma[431:428] +suma[427:424] +suma[423:420] +suma[419:416] +suma[415:412] +suma[411:408] +suma[407:404] +suma[403:400] +suma[399:396] +suma[395:392] +suma[391:388] +suma[387:384] +suma[383:380] +suma[379:376] +suma[375:372] +suma[371:368] +suma[367:364] +suma[363:360] +suma[359:356] +suma[355:352] +suma[351:348] +suma[347:344] +suma[343:340] +suma[339:336] +suma[335:332] +suma[331:328] +suma[327:324] +suma[323:320] +suma[319:316] +suma[315:312] +suma[311:308] +suma[307:304] +suma[303:300] +suma[299:296] +suma[295:292] +suma[291:288] +suma[287:284] +suma[283:280] +suma[279:276] +suma[275:272] +suma[271:268] +suma[267:264] +suma[263:260] +suma[259:256] +suma[255:252] +suma[251:248] +suma[247:244] +suma[243:240] +suma[239:236] +suma[235:232] +suma[231:228] +suma[227:224] +suma[223:220] +suma[219:216] +suma[215:212] +suma[211:208] +suma[207:204] +suma[203:200] +suma[199:196] +suma[195:192] +suma[191:188] +suma[187:184] +suma[183:180] +suma[179:176] +suma[175:172] +suma[171:168] +suma[167:164] +suma[163:160] +suma[159:156] +suma[155:152] +suma[151:148] +suma[147:144] +suma[143:140] +suma[139:136] +suma[135:132] +suma[131:128] +suma[127:124] +suma[123:120] +suma[119:116] +suma[115:112] +suma[111:108] +suma[107:104] +suma[103:100] +suma[99:96] +suma[95:92] +suma[91:88] +suma[87:84] +suma[83:80] +suma[79:76] +suma[75:72] +suma[71:68] +suma[67:64] +suma[63:60] +suma[59:56] +suma[55:52] +suma[51:48] +suma[47:44] +suma[43:40] +suma[39:36] +suma[35:32] +suma[31:28] +suma[27:24] +suma[23:20] +suma[19:16] +suma[15:12]+suma[11:8]+suma[7:4]+suma[3:0];
		end	
		else begin
				Output=0;
			end	
	end

endmodule






// module Sumatoria # (parameter SAMPLES=2, parameter OSF=8) (Enable,Input,Output);
// 	input wire Enable;
//     input wire [SAMPLES*OSF-1:0] Input;
//     output wire [SAMPLES*OSF-1:0] Output;


//     wire [SAMPLES*OSF/2-1:0] valorSuma;
//     reg [SAMPLES*OSF/2-1:0] var;

//    	genvar j;
//     generate for(j=0; j<SAMPLES*OSF; j=j+8)
//        begin: t2bs
//        		thermo2bin t2b(Input[j+7:j],valorSuma[(j/2)+3:j/2]);
//        end
//     endgenerate
// 	integer i;
// 	always @(*)
// 	begin
// 		if (Enable) begin
// 			for (i=0;i<=SAMPLES*OSF;i=i+1) begin
// 				var=var+valorSuma[i+1];
// 			end
	    	
// 		end
// 	end
// 	assign Output = var;
 //      always @(*) begin
	// 	if (Enable) begin
	// 		integer i;
	// 		for(i=0; i<SAMPLES*OSF/2; i=i+4)
	// 		begin
	// 		var=var+valorSuma[3+i:i];
	// 		end
	// 	end	
	// 	// else 
	// 	// begin
	// 	// 	Output= 0;
	// 	// end	
	// end
	// 

    // genvar k;
    // generate for(k=0; k<(SAMPLES*OSF)/2; k=k+4)
    //    begin: aaaa
    //    		Suma sumita(valorSuma[k+3:k],valorSuma[k+7:k+4],valorSuma[k+3:k]);
    //    end
    // endgenerate



  //   always @(*) begin
		// if (Enable) begin
		// 	for(i=0; i<12; i=i+4)
		// 	begin
		// 	var=var+suma[3+i:i];
		// 	end
		// end	
		// else 
		// begin
		// 	Output= 0;
		// end	
	// end
	// assign Output = var ;

	// always @(*) begin
	// 	if (Enable) begin
	// 		Output=suma[3:0]+suma[7:4];
	// 	end	
	// end

//endmodule

 //    always @(*)
	// begin
	// if(reset)
	// begin
	// 	Output=0;
	// end

	// else begin
	// 	for(i=0; i<SAMPLES*OSF; i=i+1)
	// 	if(Input[i]==1)
	// 		begin
	// 		suma = suma +1;
	// 		end
	// 	else begin
	// 		Output=suma;
	// 		i= SAMPLES*OSF;
	// 	end

	// 	end
	// end
    
    
//endmodule


	// else begin
