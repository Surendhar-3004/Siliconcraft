module excess3_bcd_tb;
  reg e3,e2,e1,e0;
  wire b3,b2,b1,b0;
  
  excess3_bcd eb(.e3(e3),.e2(e2),.e1(e1),.e0(e0),.b3(b3),.b2(b2),.b1(b1),.b0(b0));
  
  initial begin
    e3=0;
    e2=0;
    e1=1;
    e0=1;
    #10
    e3=1;
    e2=0;
    e1=1;
    e0=1;
	#10 
    e3=0;
    e2=1;
    e1=0;
    e0=0;
    #10 
    e3=1;
    e2=0;
    e1=1;
    e0=0;
    #10 
    e3=0;
    e2=1;
    e1=0;
    e0=0;
    #10
    e3=1;
    e2=0;
    e1=1;
    e0=1;
    #10
    e3=0;
    e2=1;
    e1=0;
    e0=0;
    #10
    e3=1;
    e2=0;
    e1=1;
    e0=0;
    #10
    e3=0;
    e2=1;
    e1=1;
    e0=1;
    #10
    
    $finish;
  end
  
  initial begin
    $monitor("%t | e3=%b | e2=%b | e1=%b | e0=%b | b3=%b | b2=%b | b1=%b | b0=%b |",$time,e3,e2,e1,e0,b3,b2,b1,b0);
    $dumpfile("excess3_bcd.vcd");
    $dumpvars(1,excess3_bcd_tb);
  end
endmodule
