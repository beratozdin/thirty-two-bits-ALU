module xor_gate(out,input1,input2);

input input1,input2;
output out;

wire not1,not2;
wire outAnd1,outAnd2;

not (not1,input1);
not (not2,input2);
and (outAnd1,not1,input2);
and (outAnd2,not2,input1);
or (out,outAnd1,outAnd2);

endmodule
