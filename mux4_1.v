module mux4_1(out,input1,input2,input3,input4,select1,select0); //select1 is most significant bit.

input input1,input2,input3,input4,select1,select0;
output out;

wire andOut1,andOut2,andOut3,andOut4;
wire notS1,notS0;

not (notS1,select1);
not (notS0,select0);

and  firstAnd(andOut1,input1,notS1,notS0);
and  secondAnd(andOut2,input2,select0,notS1);
and  thirdAnd(andOut3,input3,select1,notS0);
and  fourthAnd(andOut4,input4,select1,select0);

or result(out,andOut1,andOut2,andOut3,andOut4);

endmodule
