`define DELAY 20
module xor_gate_testbench(); 
reg input1,input2;
wire out;

xor_gate xor_gate_test(out, input1,input2);

initial begin
input1 = 1'b0; input2 = 1'b0;
#`DELAY;
input1 = 1'b0; input2 = 1'b1;
#`DELAY;
input1 = 1'b1; input2 = 1'b0;
#`DELAY;
input1 = 1'b1; input2 = 1'b1;
end

initial
begin
$monitor("time = %2d, out=%1b, input1=%1b, input2=%1b", $time, out, input1, input2);
end
 
endmodule