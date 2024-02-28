module parity_gen_tb;
  reg a,b,c;
  wire p;
  
  parity_gen_even pe(.a(a),.b(b),.c(c),.p(p));
  
  initial begin
    a=0;b=1;c=1;
    #10 a=0;b=1;c=1;
    #10 a=1;b=0;c=0;
    #10 a=0;b=0;c=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | c=%b | p=%b",$time,a,b,c,p);
    $dumpfile("parity_gen_even");
    $dumpvars(1,parity_gen_tb);
  end
endmodule
