module mux4_1_tb;
  reg a,b,c,d,s0,s1;
  wire y;
  
  mux4_1 mux1(.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1),.y(y));
  
  initial begin
    a=0;b=1;c=0;d=1;s0=0;s1=0;
    #20 s0=0;s1=1;
    #20 s0=1;s1=0;
    #20 s0=1;s1=1;
    #20
    $finish;
  end
  
  initial begin
    $monitor("time=%0t | a=%0b | b=%b | c=%b | d=%b |  s0=%b | s1=%b | y=%b",$time,a,b,c,d,s0,s1,y);
    $dumpfile("mux4_1.vcd");
    $dumpvars(1,mux4_1_tb);
  end 
endmodule
