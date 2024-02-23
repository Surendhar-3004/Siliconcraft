module decoder2_4_tb;
  reg a,b;
  wire y0,y1,y2,y3;
  
  decoder2_4 decoder(.a(a),.b(b),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  
  initial begin
    a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a=%b | b=%b | y0=%b | y1=%b | y2=%b | y3=%b",$time,a,b,y0,y1,y2,y3);
    $dumpfile("decoder2_4.vcd");
    $dumpvars(1,decoder2_4_tb);
  end
endmodule
