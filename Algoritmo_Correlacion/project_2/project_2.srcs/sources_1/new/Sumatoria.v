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


module Sumatoria(Input, Output);
    input [511:0]Input;
    output [10:0]Output;
    
    assign Output = Input[511:508] +Input[507:504] +Input[503:500] +Input[499:496] +Input[495:492] +Input[491:488] +Input[487:484] +Input[483:480] +Input[479:476] +Input[475:472] +Input[471:468] +Input[467:464] +Input[463:460] +Input[459:456] +Input[455:452] +Input[451:448] +Input[447:444] +Input[443:440] +Input[439:436] +Input[435:432] +Input[431:428] +Input[427:424] +Input[423:420] +Input[419:416] +Input[415:412] +Input[411:408] +Input[407:404] +Input[403:400] +Input[399:396] +Input[395:392] +Input[391:388] +Input[387:384] +Input[383:380] +Input[379:376] +Input[375:372] +Input[371:368] +Input[367:364] +Input[363:360] +Input[359:356] +Input[355:352] +Input[351:348] +Input[347:344] +Input[343:340] +Input[339:336] +Input[335:332] +Input[331:328] +Input[327:324] +Input[323:320] +Input[319:316] +Input[315:312] +Input[311:308] +Input[307:304] +Input[303:300] +Input[299:296] +Input[295:292] +Input[291:288] +Input[287:284] +Input[283:280] +Input[279:276] +Input[275:272] +Input[271:268] +Input[267:264] +Input[263:260] +Input[259:256] +Input[255:252] +Input[251:248] +Input[247:244] +Input[243:240] +Input[239:236] +Input[235:232] +Input[231:228] +Input[227:224] +Input[223:220] +Input[219:216] +Input[215:212] +Input[211:208] +Input[207:204] +Input[203:200] +Input[199:196] +Input[195:192] +Input[191:188] +Input[187:184] +Input[183:180] +Input[179:176] +Input[175:172] +Input[171:168] +Input[167:164] +Input[163:160] +Input[159:156] +Input[155:152] +Input[151:148] +Input[147:144] +Input[143:140] +Input[139:136] +Input[135:132] +Input[131:128] +Input[127:124] +Input[123:120] +Input[119:116] +Input[115:112] +Input[111:108] +Input[107:104] +Input[103:100] +Input[99:96] +Input[95:92] +Input[91:88] +Input[87:84] +Input[83:80] +Input[79:76] +Input[75:72] +Input[71:68] +Input[67:64] +Input[63:60] +Input[59:56] +Input[55:52] +Input[51:48] +Input[47:44] +Input[43:40] +Input[39:36] +Input[35:32] +Input[31:28] +Input[27:24] +Input[23:20] +Input[19:16] +Input[15:12]+Input[11:8]+Input[7:4]+Input[3:0];
    
    
endmodule
