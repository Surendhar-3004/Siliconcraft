module mux2_1_tb;
  reg a,b,s;
  wire z;
  
  mux2_1 mux(.a(a),.b(b),.s(s),.z(z));
  
  initial begin
    a=0;b=0;s=1;
    #10 a=0;b=1;s=0;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | s=%b | z=%b",$time,a,b,s,z);
    $dumpfile("mux2_1.vcd");
    $dumpvars(1,mux2_1_tb);
  end 
endmodule
