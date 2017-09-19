
`timescale 1ns/1ps

module tb_AlgoritmoCorrelacion (); /* this is automatically generated */

	parameter SAMPLES = 128;
	parameter OSF     = 8;
	parameter n       = 4;

	reg [SAMPLES*OSF-1:0] DataIn1;
	reg [SAMPLES*OSF-1:0] DataIn2;
	reg                   Reset;
	reg                   P;
	reg                   Enable;
	wire                  DataOut;

	reg [31:0] Array_IN [0:127];
	reg [31:0] Array_IN_2 [0:31];
	//reg [31:0] Array_OUT [0:62];


	integer FileSaveData;
	

	integer contador;

	initial begin
    $readmemh("SeñalMuestra1HEXA.txt", Array_IN);
    $readmemh("SeñalPatron1HEXA.txt", Array_IN_2);
    FileSaveData = $fopen("Hexadecimal_C.txt","w");
    //$writememh("Hexadecimal_C.txt",Array_OUT);

    for(contador=0; contador<32; contador=contador+1)
	    begin
	    	DataIn2 = {DataIn2,Array_IN_2[contador]};
	    end

    end

	AlgoritmoCorrelacion #(.SAMPLES(SAMPLES),.OSF(OSF),.n(n)) inst_AlgoritmoCorrelacion 
		(
			.DataIn1 (DataIn1),
			.DataIn2 (DataIn2),
			.Reset   (Reset),
			.P       (P),
			.Enable  (Enable),
			.DataOut (DataOut)
		);



	initial begin
		// do something
		contador = 0;
		DataIn1 = Array_IN[contador];
		//DataIn2 = Array_IN_2[contador];
		contador = contador + 1;
		Enable=0;
		Reset=1;
		P=1;
		#10
		Reset=0;
		Enable=1;
		P=0;

		for(contador=1; contador<129; contador=contador+1)
			begin
				//Array_OUT[contador]=DataOut;
				DataIn1 = { DataIn1, Array_IN[contador]};
				//DataIn2 = {DataIn2, Array_IN_2[contador]};
				P=1;
				#10;
				P=0;
				#10;
				$monitor(inst_AlgoritmoCorrelacion.valorCorrelacion);
				$fwrite(FileSaveData,"%d\n",inst_AlgoritmoCorrelacion.valorCorrelacion);
			end
		$fclose(FileSaveData);
		$finish;
	end

endmodule







// 	  reg [W-1:0] Array_IN [0:((2**PERIOD)-1)];
// 	  reg [W-1:0] Array_IN_2 [0:((2**PERIOD)-1)];

// 	  reg [W-1:0] Array_IN_3 [0:((2**PERIOD)-1)];

// 	  integer contador;
// 	  integer FileSaveData;
// 	  integer logVectorReference;
// 	  integer Cont_CLK;
// 	  integer Recept;
//  initial begin
//     FileSaveData = $fopen("ResultadoXilinxFLM.txt","w");
//     logVectorReference = $fopen("output_log.txt","w");

//     rst = 1;

// `ifdef SUB_OPER
//     add_subt = 1; //Se realiza la operacion de resta
// `else
//     add_subt = 0; //Se realiza la operacion de suma
// `endif

//     beg_OP = 0;
//     Data_Y = 0;
//     Data_X = 0;
//     Data_X_mant = 0;
//     Data_Y_mant = 0;
//     Data_X_exp  = 0;
//     Data_Y_exp  = 0;
//     Data_X_sign = 0;
//     Data_Y_sign = 0;
//     //Theoretical_result = 32'hbe1abef8;
//     //Inicializa las variables del testbench
//     contador = 0;
//     Cont_CLK = 0;



//     #98 rst = 0;
//    end

//  initial begin
//     FileSaveData = $fopen("ResultadoXilinxFLM.txt","w");
//     logVectorReference = $fopen("output_log.txt","w");

//     rst = 1;
//     beg_OP = 0;
//     //Theoretical_result = 32'hbe1abef8;
//     //Inicializa las variables del testbench
//     contador = 0;



//     #98 rst = 0;
  

//    end

//    initial begin
//         $readmemh("Hexadecimal_A.txt", Array_IN);
//         $readmemh("Hexadecimal_B.txt", Array_IN_2);
//         $readmemh("Hexadecimal_R.txt", Array_IN_3);
//     end


//   always @(posedge clk) begin
//       if (contador == (2**PERIOD+6)) begin
//           $fclose(FileSaveData);
//           $fclose(logVectorReference);
//           $finish;
//       end else if(ready) begin
//         $fwrite(FileSaveData,"%h\n",final_result_ieee);
//       end

//   end


//  