module bcd_excess3_tb;
  reg b3,b2,b1,b0;
  wire e3,e2,e1,e0;
  
  bcd_excess3 bcd(.b3(b3),.b2(b2),.b1(b1),.b0(b0),.e3(e3),.e2(e2),.e1(e1),.e0(e0));
  
  initial begin
    b3=0;b2=0;b1=0;b0=0;
    #10 b3=0;b2=0;b1=0;b0=1;
    #10 b3=0;b2=0;b1=1;b0=0;
    #10 b3=0;b2=0;b1=1;b0=1;
    #10 b3=0;b2=1;b1=0;b0=0;
    #10 b3=0;b2=1;b1=0;b0=1;
    #10 b3=0;b2=1;b1=1;b0=0;
    #10 b3=0;b2=1;b1=1;b0=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | b3=%b | b2=%b | b1=%b | b0=%b | e3=%b | e2=%b | e1=%b | e0=%b |",$time,b3,b2,b1,b0,e3,e2,e1,e0);
    $dumpfile("bcd_excess3.vcd");
    $dumpvars(1,bcd_excess3_tb);
  end
endmodule

