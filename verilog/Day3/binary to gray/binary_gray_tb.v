module binary_gray_tb;
  reg b3,b2,b1,b0;
  wire g3,g2,g1,g0;
  
  binary_gray bg(.b3(b3),.b2(b2),.b1(b1),.b0(b0),.g3(g3),.g2(g2),.g1(g1),.g0(g0));
  
  initial begin
    b3=0;b2=0;b1=0;b0=0;
    #10 b3=0;b2=0;b1=0;b0=0;
    #10 b3=0;b2=0;b1=0;b0=1;
    #10 b3=0;b2=0;b1=1;b0=0;
    #10 b3=0;b2=0;b1=1;b0=1;
    #10 b3=0;b2=1;b1=0;b0=0;
    #10 b3=0;b2=1;b1=0;b0=1;
    #10 b3=0;b2=1;b1=1;b0=0;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | b3=%b | b2=%b | b1=%b | b0=%b | g3=%b | g2=%b | g1=%b | g0=%b |",$time,b3,b2,b1,b0,g3,g2,g1,g0);
    $dumpfile("binary_gray.vcd");
    $dumpvars(1,binary_gray_tb);
  end
endmodule
