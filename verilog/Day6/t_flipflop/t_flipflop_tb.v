module t_flipflop_tb;
  reg t,clk;
  wire q;
  
  t_flipflop tf(.t(t),.clk(clk),.q(q));
  
  initial begin
    clk=0;t=0;
     #20 
    $finish;
  end
  
      always #4 t = ~t;
  	  always #2 clk = ~clk;
     
  
  initial begin
    $monitor("%t | t=%b | clk=%b | q=%b",$time,t,clk,q);
    $dumpfile("t_flipflop.vcd");
    $dumpvars(1,t_flipflop_tb);
  end
endmodule
