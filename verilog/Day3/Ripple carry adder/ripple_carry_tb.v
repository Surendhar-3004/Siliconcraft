module ripplecarry_adder_tb;
  reg a0,b0,c0,a1,b1,a2,b2,a3,b3;
  wire s0,s1,s2,s3,carry;
  
  ripplecarry_adder rc(.a0(a0),.b0(b0),.c0(c0),.a1(a1),.b1(b1),.a2(a2),.b2(b2),.a3(a3),.b3(b3),.s0(s0),.s1(s1),.s2(s2),.s3(s3),.carry(carry));
  
  initial begin
    a0=0;b0=0;c0=0;
    a1=0;b1=0;
    a2=0;b2=0;
    a3=0;b3=0;
    #10 
    a0=0;b0=0;c0=0;
    a1=1;b1=0;
    a2=0;b2=1;
    a3=0;b3=0;
    #10
    a0=1;b0=0;c0=0;
    a1=1;b1=0;
    a2=0;b2=1;
    a3=0;b3=0;
    #10
    a0=0;b0=0;c0=0;
    a1=1;b1=1;
    a2=0;b2=1;
    a3=0;b3=0;
    #10
    a0=0;b0=0;c0=0;
    a1=1;b1=1;
    a2=0;b2=1;
    a3=1;b3=1;
    #10
    a0=1;b0=0;c0=0;
    a1=1;b1=0;
    a2=0;b2=1;
    a3=1;b3=1;
    #10
    a0=1;b0=1;c0=0;
    a1=1;b1=1;
    a2=1;b2=1;
    a3=1;b3=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | a0=%b | b0=%b | c0=%b | a1=%b | b1=%b | a2=%b | b2=%b | a3=%b | b3=%b | s0=%b | s1=%b | s2=%b | s3=%b | carry=%b",$time,a0,b0,c0,a1,b1,a2,b2,a3,b3,s0,s1,s2,s3,carry);
    $dumpfile("ripplecarry_adder.vcd");
    $dumpvars(1,ripplecarry_adder_tb);
  end
endmodule
