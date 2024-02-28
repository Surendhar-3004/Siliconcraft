module t_flipflop_tb;
  reg t,clk,reset;
  wire q;
  
  t_flipflop tf(.t(t),.clk(clk),.reset(reset),.q(q));
  
  initial begin
    clk=0;t=0;reset=0;
     #20 
    $finish;
  end
  
      always #4 t = ~t;
  	  always #2 clk = ~clk;
  always #6 reset=~reset;
  
  initial begin
    $monitor("%t | t=%b | clk=%b | reset=%b | q=%b",$time,t,clk,reset,q);
    $dumpfile("t_flipflop.vcd");
    $dumpvars(1,t_flipflop_tb);
  end
endmodule
