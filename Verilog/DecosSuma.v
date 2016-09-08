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


module DecosSuma # (parameter SAMPLES=128, parameter OSF=8) (Input,Output);
    input wire [SAMPLES*OSF-1:0] Input;
    output wire [$clog2(SAMPLES*OSF):0] Output;

    reg [$clog2(SAMPLES*OSF):0] var;
    integer i;

    always @(Input)
    begin
        var=0;
        for(i=0; i<SAMPLES*OSF; i=i+1)
        begin
            var=var+Input[i];
        end
     
     end

    assign Output=var;

   


    /*
    Deco_Sum DecoS1(Input[7:0],Output[3:0]);
    Deco_Sum DecoS2(Input[15:8],Output[7:4]);
    Deco_Sum DecoS3(Input[23:16],Output[11:8]);
    Deco_Sum DecoS4(Input[31:24],Output[15:12]);
    Deco_Sum DecoS5(Input[39:32],Output[19:16]);
    Deco_Sum DecoS6(Input[47:40],Output[23:20]);
    Deco_Sum DecoS7(Input[55:48],Output[27:24]);
    Deco_Sum DecoS8(Input[63:56],Output[31:28]);
    Deco_Sum DecoS9(Input[71:64],Output[35:32]);
    Deco_Sum DecoS10(Input[79:72],Output[39:36]);
    Deco_Sum DecoS11(Input[87:80],Output[43:40]);
    Deco_Sum DecoS12(Input[95:88],Output[47:44]);
    Deco_Sum DecoS13(Input[103:96],Output[51:48]);
    Deco_Sum DecoS14(Input[111:104],Output[55:52]);
    Deco_Sum DecoS15(Input[119:112],Output[59:56]);
    Deco_Sum DecoS16(Input[127:120],Output[63:60]);
    Deco_Sum DecoS17(Input[135:128],Output[67:64]);
    Deco_Sum DecoS18(Input[143:136],Output[71:68]);
    Deco_Sum DecoS19(Input[151:144],Output[75:72]);
    Deco_Sum DecoS20(Input[159:152],Output[79:76]);
    Deco_Sum DecoS21(Input[167:160],Output[83:80]);
    Deco_Sum DecoS22(Input[175:168],Output[87:84]);
    Deco_Sum DecoS23(Input[183:176],Output[91:88]);
    Deco_Sum DecoS24(Input[191:184],Output[95:92]);
    Deco_Sum DecoS25(Input[199:192],Output[99:96]);
    Deco_Sum DecoS26(Input[207:200],Output[103:100]);
    Deco_Sum DecoS27(Input[215:208],Output[107:104]);
    Deco_Sum DecoS28(Input[223:216],Output[111:108]);
    Deco_Sum DecoS29(Input[231:224],Output[115:112]);
    Deco_Sum DecoS30(Input[239:232],Output[119:116]);
    Deco_Sum DecoS31(Input[247:240],Output[123:120]);
    Deco_Sum DecoS32(Input[255:248],Output[127:124]);
    Deco_Sum DecoS33(Input[263:256],Output[131:128]);
    Deco_Sum DecoS34(Input[271:264],Output[135:132]);
    Deco_Sum DecoS35(Input[279:272],Output[139:136]);
    Deco_Sum DecoS36(Input[287:280],Output[143:140]);
    Deco_Sum DecoS37(Input[295:288],Output[147:144]);
    Deco_Sum DecoS38(Input[303:296],Output[151:148]);
    Deco_Sum DecoS39(Input[311:304],Output[155:152]);
    Deco_Sum DecoS40(Input[319:312],Output[159:156]);
    Deco_Sum DecoS41(Input[327:320],Output[163:160]);
    Deco_Sum DecoS42(Input[335:328],Output[167:164]);
    Deco_Sum DecoS43(Input[343:336],Output[171:168]);
    Deco_Sum DecoS44(Input[351:344],Output[175:172]);
    Deco_Sum DecoS45(Input[359:352],Output[179:176]);
    Deco_Sum DecoS46(Input[367:360],Output[183:180]);
    Deco_Sum DecoS47(Input[375:368],Output[187:184]);
    Deco_Sum DecoS48(Input[383:376],Output[191:188]);
    Deco_Sum DecoS49(Input[391:384],Output[195:192]);
    Deco_Sum DecoS50(Input[399:392],Output[199:196]);
    Deco_Sum DecoS51(Input[407:400],Output[203:200]);
    Deco_Sum DecoS52(Input[415:408],Output[207:204]);
    Deco_Sum DecoS53(Input[423:416],Output[211:208]);
    Deco_Sum DecoS54(Input[431:424],Output[215:212]);
    Deco_Sum DecoS55(Input[439:432],Output[219:216]);
    Deco_Sum DecoS56(Input[447:440],Output[223:220]);
    Deco_Sum DecoS57(Input[455:448],Output[227:224]);
    Deco_Sum DecoS58(Input[463:456],Output[231:228]);
    Deco_Sum DecoS59(Input[471:464],Output[235:232]);
    Deco_Sum DecoS60(Input[479:472],Output[239:236]);
    Deco_Sum DecoS61(Input[487:480],Output[243:240]);
    Deco_Sum DecoS62(Input[495:488],Output[247:244]);
    Deco_Sum DecoS63(Input[503:496],Output[251:248]);
    Deco_Sum DecoS64(Input[511:504],Output[255:252]);
    Deco_Sum DecoS65(Input[519:512],Output[259:256]);
    Deco_Sum DecoS66(Input[527:520],Output[263:260]);
    Deco_Sum DecoS67(Input[535:528],Output[267:264]);
    Deco_Sum DecoS68(Input[543:536],Output[271:268]);
    Deco_Sum DecoS69(Input[551:544],Output[275:272]);
    Deco_Sum DecoS70(Input[559:552],Output[279:276]);
    Deco_Sum DecoS71(Input[567:560],Output[283:280]);
    Deco_Sum DecoS72(Input[575:568],Output[287:284]);
    Deco_Sum DecoS73(Input[583:576],Output[291:288]);
    Deco_Sum DecoS74(Input[591:584],Output[295:292]);
    Deco_Sum DecoS75(Input[599:592],Output[299:296]);
    Deco_Sum DecoS76(Input[607:600],Output[303:300]);
    Deco_Sum DecoS77(Input[615:608],Output[307:304]);
    Deco_Sum DecoS78(Input[623:616],Output[311:308]);
    Deco_Sum DecoS79(Input[631:624],Output[315:312]);
    Deco_Sum DecoS80(Input[639:632],Output[319:316]);
    Deco_Sum DecoS81(Input[647:640],Output[323:320]);
    Deco_Sum DecoS82(Input[655:648],Output[327:324]);
    Deco_Sum DecoS83(Input[663:656],Output[331:328]);
    Deco_Sum DecoS84(Input[671:664],Output[335:332]);
    Deco_Sum DecoS85(Input[679:672],Output[339:336]);
    Deco_Sum DecoS86(Input[687:680],Output[343:340]);
    Deco_Sum DecoS87(Input[695:688],Output[347:344]);
    Deco_Sum DecoS88(Input[703:696],Output[351:348]);
    Deco_Sum DecoS89(Input[711:704],Output[355:352]);
    Deco_Sum DecoS90(Input[719:712],Output[359:356]);
    Deco_Sum DecoS91(Input[727:720],Output[363:360]);
    Deco_Sum DecoS92(Input[735:728],Output[367:364]);
    Deco_Sum DecoS93(Input[743:736],Output[371:368]);
    Deco_Sum DecoS94(Input[751:744],Output[375:372]);
    Deco_Sum DecoS95(Input[759:752],Output[379:376]);
    Deco_Sum DecoS96(Input[767:760],Output[383:380]);
    Deco_Sum DecoS97(Input[775:768],Output[387:384]);
    Deco_Sum DecoS98(Input[783:776],Output[391:388]);
    Deco_Sum DecoS99(Input[791:784],Output[395:392]);
    Deco_Sum DecoS100(Input[799:792],Output[399:396]);
    Deco_Sum DecoS101(Input[807:800],Output[403:400]);
    Deco_Sum DecoS102(Input[815:808],Output[407:404]);
    Deco_Sum DecoS103(Input[823:816],Output[411:408]);
    Deco_Sum DecoS104(Input[831:824],Output[415:412]);
    Deco_Sum DecoS105(Input[839:832],Output[419:416]);
    Deco_Sum DecoS106(Input[847:840],Output[423:420]);
    Deco_Sum DecoS107(Input[855:848],Output[427:424]);
    Deco_Sum DecoS108(Input[863:856],Output[431:428]);
    Deco_Sum DecoS109(Input[871:864],Output[435:432]);
    Deco_Sum DecoS110(Input[879:872],Output[439:436]);
    Deco_Sum DecoS111(Input[887:880],Output[443:440]);
    Deco_Sum DecoS112(Input[895:888],Output[447:444]);
    Deco_Sum DecoS113(Input[903:896],Output[451:448]);
    Deco_Sum DecoS114(Input[911:904],Output[455:452]);
    Deco_Sum DecoS115(Input[919:912],Output[459:456]);
    Deco_Sum DecoS116(Input[927:920],Output[463:460]);
    Deco_Sum DecoS117(Input[935:928],Output[467:464]);
    Deco_Sum DecoS118(Input[943:936],Output[471:468]);
    Deco_Sum DecoS119(Input[951:944],Output[475:472]);
    Deco_Sum DecoS120(Input[959:952],Output[479:476]);
    Deco_Sum DecoS121(Input[967:960],Output[483:480]);
    Deco_Sum DecoS122(Input[975:968],Output[487:484]);
    Deco_Sum DecoS123(Input[983:976],Output[491:488]);
    Deco_Sum DecoS124(Input[991:984],Output[495:492]);
    Deco_Sum DecoS125(Input[999:992],Output[499:496]);
    Deco_Sum DecoS126(Input[1007:1000],Output[503:500]);
    Deco_Sum DecoS127(Input[1015:1008],Output[507:504]);
    Deco_Sum DecoS128(Input[1023:1016],Output[511:508]);
*/
endmodule
