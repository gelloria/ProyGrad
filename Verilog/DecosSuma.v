`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2016 03:23:07 PM
// Design Name: 
// Module Name: DecosSuma
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


module DecosSuma # (parameter SAMPLES=128, parameter OSF=8) (
    input wire [SAMPLES*OSF-1:0] Input,
    output wire [(SAMPLES*OSF)/2-1:0] Output
    );
    

    // wire [(SAMPLES*OSF):0] var;
    // wire [(SAMPLES*OSF):0] sum;

    genvar j;
    generate for(j=0; j<SAMPLES*OSF; j=j+8)
       begin: registers
            Deco_Sum FiltroPB(Input[j+7:j],Output[(j/2)+3:j/2]);
       end
    endgenerate

    //assign Output = sum;

    // genvar z;
    // generate for(integer z=0; z<=$clog2(SAMPLES*OSF); z=z+1)
    //    begin:
            
    //    end
    // endgenerate

 
    /*
    Deco_Sum DecoS1(Input[7:0],Output[3:0]);
    Deco_Sum DecoS2(Input[15:8],Output[7:4]);
    Deco_Sum DecoS3(Input[23:16],Output[11:8]);
    Deco_Sum DecoS4(Input[31:24],Output[15:12]);
    Deco_Sum DecoS5(Input[39:32],Output[19:16]);
    ...
    Deco_Sum DecoS125(Input[999:992],Output[499:496]);
    Deco_Sum DecoS126(Input[1007:1000],Output[503:500]);
    Deco_Sum DecoS127(Input[1015:1008],Output[507:504]);
    Deco_Sum DecoS128(Input[1023:1016],Output[511:508]);
*/
endmodule
