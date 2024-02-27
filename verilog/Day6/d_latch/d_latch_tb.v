module d_latch_tb;
  reg d,en,reset;
  wire q;
  
  d_latch dl(.d(d),.en(en),.reset(reset),.q(q));
  
  initial begin
    en=0;reset=1;d=0;
     #2 reset=0;
     #20 
    $finish;
  end
  
      always #5 d = ~d;
  	  always #2 en = ~en;
     
  
  initial begin
    $monitor("%t | d=%b | en=%b | reset=%b | q=%b",$time,d,en,reset,q);
    $dumpfile("d_latch.vcd");
    $dumpvars(1,d_latch_tb);
  end
endmodule
