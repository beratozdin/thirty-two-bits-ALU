`define DELAY 20
module msb_testbench(); 

reg Ai,Bi,Cin,Op2,Op1,Op0,Less;
wire Cout,Ri,Set,Vout;

msb alu_gate(Ai,Bi,Cin,Cout,Less,Op2,Op1,Op0,Ri,Set,Vout);

initial begin
Ai=1'b0; Bi=1'b1; Cin=1'b0; Less=1'b0; Op2=1'b0; Op1=1'b0; Op0=1'b0; 
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b0; Less=1'b0; Op2=1'b0; Op1=1'b0; Op0=1'b1; 
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b0; Less=1'b0; Op2=1'b0; Op1=1'b1; Op0=1'b0; 
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b0; Less=1'b0; Op2=1'b1; Op1=1'b1; Op0=1'b0;
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b0; Less=1'b0; Op2=1'b1; Op1=1'b1; Op0=1'b1; 
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b1; Less=1'b0; Op2=1'b0; Op1=1'b0; Op0=1'b0; 
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b1; Less=1'b0; Op2=1'b0; Op1=1'b0; Op0=1'b1;
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b1; Less=1'b0; Op2=1'b0; Op1=1'b1; Op0=1'b0; 
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b1; Less=1'b0; Op2=1'b1; Op1=1'b1; Op0=1'b0; 
#`DELAY;
Ai=1'b0; Bi=1'b1; Cin=1'b1; Less=1'b0; Op2=1'b1; Op1=1'b1; Op0=1'b1; 
end

initial
begin
$monitor("time = %2d, opcode(210)=%1b%1b%1b, Ai=%1b, Bi=%1b, Cin=%1b, Less=%1b, Ri=%1b, Cout=%1b, Set=%1b, Vout=%1b", $time, Op2, Op1, Op0, Ai, Bi, Cin, Less, Ri, Cout,Set,Vout);
end
 
endmodule