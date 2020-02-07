module alu(Ai,Bi,Cin,Cout,Less,Op2,Op1,Op0,Ri);

input Ai,Bi,Cin,Op2,Op1,Op0,Less;
output Cout,Ri;

wire   xorResult;
wire   or1,and1,notAnd1,and2,and3,notAnd3,and4,or2;

xor_gate gate(xorResult,Bi,Op2);
or (or1,xorResult,Ai);
and (and1,xorResult,Ai);
not(notAnd1,and1);
and (and2,or1,notAnd1);
and(and3,Cin,and2);
or (Cout,and1,and3);
not (notAnd3,and3);
or (or2,Cin,and2);
and (and4,notAnd3,or2);

mux4_1 muxGate(Ri,and1,or1,and4,Less,Op1,Op0);

endmodule