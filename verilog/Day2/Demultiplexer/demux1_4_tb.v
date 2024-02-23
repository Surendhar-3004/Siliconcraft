module demux1_4_tb;
  reg d,s0,s1;
  wire y0,y1,y2,y3;
  
  demux1_4 demux(.d(d),.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  
  initial begin
    d=1;s0=0;s1=0;
    #10 s0=0;s1=1;
   
    #10 s0=1;s1=0;
   
    #10 s0=1;s1=1;
    
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | d=%b | s0=%d | s1=%d | y0=%d | y1=%d | y2=%d | y3=%d",$time,d,s0,s1,y0,y1,y2,y3); 
    $dumpfile("demux1_4.vcd");
    $dumpvars(1,demux1_4_tb);
  end 
endmodule
