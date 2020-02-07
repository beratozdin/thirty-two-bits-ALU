`define DELAY 20
module mux4_1_testbench(); 
reg input1,input2,input3,input4,select1,select0;
wire out;

mux4_1 mux4_1_test(out,input1,input2,input3,input4,select1,select0);

initial begin
input1=1'b0; input2=1'b1; input3=1'b1; input4=1'b0; select1=1'b0; select0=1'b0;
#`DELAY;
input1=1'b0; input2=1'b1; input3=1'b1; input4=1'b0; select1=1'b0; select0=1'b1;
#`DELAY;
input1=1'b0; input2=1'b1; input3=1'b1; input4=1'b0; select1=1'b1; select0=1'b0;
#`DELAY;
input1=1'b0; input2=1'b1; input3=1'b1; input4=1'b0; select1=1'b1; select0=1'b1;
end

initial
begin
$monitor("time = %2d, out=%1b, select1=%1b, select0=%1b, input1=%1b, input2=%1b, input3=%1b, input4=%1b", $time, out, select1, select0, input1, input2, input3 ,input4);
end
 
endmodule