module d_flipflop_tb;
  reg d,clk,reset;
  wire q;
  
  d_flipflop df(.d(d),.clk(clk),.reset(reset),.q(q));
  
  initial begin
    clk=1;reset=0;d=1;

    #20 $finish;
  end
  
      always #1 clk = ~clk;
  	  always #2 d = ~d;
      always #4 reset = ~reset;
  
  initial begin
    $monitor("%t | d=%b | clk=%b | reset=%b | q=%b",$time,d,clk,reset,q);
    $dumpfile("d_flipflop.vcd");
    $dumpvars(1,d_flipflop_tb);
  end
endmodule
