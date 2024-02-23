module encoder4_2_tb;
  reg a,b,c,d;
  wire y0,y1;
  
  encoder4_2 encoder(.a(a),.b(b),.c(c),.d(d),.y0(y0),.y1(y1));
  
  initial begin
    a=0;b=0;c=0;d=1;
    #10 a=0;b=0;c=1;d=0;
    #10 a=0;b=1;c=0;d=0;
    #10 a=1;b=0;c=0;d=0;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b |  b=%b |  c=%b |  d=%b |  y0=%b |  y1=%b",$time,a,b,c,d,y0,y1);
    $dumpfile("encoder4_2.vcd");
    $dumpvars(1,encoder4_2_tb);
  end
endmodule
