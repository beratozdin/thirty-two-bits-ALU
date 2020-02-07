module thirty_two_alu(Ai,Bi,Ri,Cout,Vout,Z,Op2,Op1,Op0);

input [31:0] Ai;
input [31:0] Bi;
input Op2,Op1,Op0;
output [31:0] Ri;
output Cout,Vout,Z;

wire carry1,carry2,carry3,carry4,carry5,carry6,carry7,carry8,carry9,carry10,carry11,carry12,carry13,
carry14,carry15,carry16,carry17,carry18,carry19,carry20,carry21,carry22,carry23,carry24,carry25,carry26,
carry27,carry28,carry29,carry30,carry31,carry32,Set,tempZ,temp;


alu bit1(Ai[0],Bi[0],Op2,carry1,Set,Op2,Op1,Op0,Ri[0]);
alu bit2(Ai[1],Bi[1],carry1,carry2,0,Op2,Op1,Op0,Ri[1]);
alu bit3(Ai[2],Bi[2],carry2,carry3,0,Op2,Op1,Op0,Ri[2]);
alu bit4(Ai[3],Bi[3],carry3,carry4,0,Op2,Op1,Op0,Ri[3]);
alu bit5(Ai[4],Bi[4],carry4,carry5,0,Op2,Op1,Op0,Ri[4]);
alu bit6(Ai[5],Bi[5],carry5,carry6,0,Op2,Op1,Op0,Ri[5]);
alu bit7(Ai[6],Bi[6],carry6,carry7,0,Op2,Op1,Op0,Ri[6]);
alu bit8(Ai[7],Bi[7],carry7,carry8,0,Op2,Op1,Op0,Ri[7]);
alu bit9(Ai[8],Bi[8],carry8,carry9,0,Op2,Op1,Op0,Ri[8]);
alu bit10(Ai[9],Bi[9],carry9,carry10,0,Op2,Op1,Op0,Ri[9]);
alu bit11(Ai[10],Bi[10],carry10,carry11,0,Op2,Op1,Op0,Ri[10]);
alu bit12(Ai[11],Bi[11],carry11,carry12,0,Op2,Op1,Op0,Ri[11]);
alu bit13(Ai[12],Bi[12],carry12,carry13,0,Op2,Op1,Op0,Ri[12]);
alu bit14(Ai[13],Bi[13],carry13,carry14,0,Op2,Op1,Op0,Ri[13]);
alu bit15(Ai[14],Bi[14],carry14,carry15,0,Op2,Op1,Op0,Ri[14]);
alu bit16(Ai[15],Bi[15],carry15,carry16,0,Op2,Op1,Op0,Ri[15]);
alu bit17(Ai[16],Bi[16],carry16,carry17,0,Op2,Op1,Op0,Ri[16]);
alu bit18(Ai[17],Bi[17],carry17,carry18,0,Op2,Op1,Op0,Ri[17]);
alu bit19(Ai[18],Bi[18],carry18,carry19,0,Op2,Op1,Op0,Ri[18]);
alu bit20(Ai[19],Bi[19],carry19,carry20,0,Op2,Op1,Op0,Ri[19]);
alu bit21(Ai[20],Bi[20],carry20,carry21,0,Op2,Op1,Op0,Ri[20]);
alu bit22(Ai[21],Bi[21],carry21,carry22,0,Op2,Op1,Op0,Ri[21]);
alu bit23(Ai[22],Bi[22],carry22,carry23,0,Op2,Op1,Op0,Ri[22]);
alu bit24(Ai[23],Bi[23],carry23,carry24,0,Op2,Op1,Op0,Ri[23]);
alu bit25(Ai[24],Bi[24],carry24,carry25,0,Op2,Op1,Op0,Ri[24]);
alu bit26(Ai[25],Bi[25],carry25,carry26,0,Op2,Op1,Op0,Ri[25]);
alu bit27(Ai[26],Bi[26],carry26,carry27,0,Op2,Op1,Op0,Ri[26]);
alu bit28(Ai[27],Bi[27],carry27,carry28,0,Op2,Op1,Op0,Ri[27]);
alu bit29(Ai[28],Bi[28],carry28,carry29,0,Op2,Op1,Op0,Ri[28]);
alu bit30(Ai[29],Bi[29],carry29,carry30,0,Op2,Op1,Op0,Ri[29]);
alu bit31(Ai[30],Bi[30],carry30,carry31,0,Op2,Op1,Op0,Ri[30]);
msb bit32(Ai[31],Bi[31],carry31,Cout,0,Op2,Op1,Op0,Ri[31],Set,Vout);

or z_gate(tempZ,Ri[0],Ri[1],Ri[2],Ri[3],Ri[4],Ri[5],Ri[6],Ri[7],Ri[8],Ri[9],Ri[10],Ri[11],Ri[12],Ri[13],Ri[14],Ri[15],Ri[16],Ri[17],Ri[18],Ri[19],Ri[20],Ri[21],Ri[22],Ri[23],Ri[24],Ri[25],Ri[26],Ri[27],Ri[28],Ri[29],Ri[30],Ri[31]);

not (Z,tempZ);

endmodule

