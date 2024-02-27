module sr_flipflop_tb;
  reg s,r,clk;
  wire q;
  
  sr_flipflop srf(.s(s),.r(r),.clk(clk),.q(q));
  
  initial begin
    clk=0;s=0;r=1;
     #20 
    $finish;
  end
  
      always #4 s = ~s;
  	  always #6 r= ~r;
  	  always #2 clk = ~clk;
     
  
  initial begin
    $monitor("%t | s=%b | r=%b | clk=%b | q=%b",$time,s,r,clk,q);
    $dumpfile("sr_flipflop.vcd");
    $dumpvars(1,sr_flipflop_tb);
  end
endmodule
