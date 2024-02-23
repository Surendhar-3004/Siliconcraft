module demux1_8_tb;
  reg d,s0,s1,s2;
  wire z0,z1,z2,z3,z4,z5,z6,z7;
  
  demux1_8 demux(.d(d),.s0(s0),.s1(s1),.s2(s2),.z0(z0),.z1(z1),.z2(z2),.z3(z3),.z4(z4),.z5(z5),.z6(z6),.z7(z7));
  
  initial begin
    d=1;s0=0;s1=0;s2=0;
    #10 s0=0;s1=0;s2=1;
    #10 s0=0;s1=1;s2=0;
    #10 s0=0;s1=1;s2=1;
    #10 s0=1;s1=0;s2=0;
    #10 s0=1;s1=0;s2=1;
    #10 s0=1;s1=1;s2=0;
    #10 s0=1;s1=1;s2=1;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | d=%b | s0=%b | s1=%b | s2=%b | z0=%b | z1=%b | z2=%b | z3=%b | z4=%b | z5=%b | z6=%b | z7=%b",$time,d,s0,s1,s2,z0,z1,z2,z3,z4,z5,z6,z7);
    $dumpfile("demux1_8.vcd");
    $dumpvars(1,demux1_8_tb);
  end
endmodule
