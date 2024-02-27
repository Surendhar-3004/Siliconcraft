module d_flipflop_tb;
  reg d,clk,reset;
  wire q;
  
  d_flipflop df(.d(d),.clk(clk),.reset(reset),.q(q));
  
  initial begin
    clk=0;reset=1;d=0;
     #2 reset=0;
     #20 
    $finish;
  end
  
      always #5 d = ~d;
  	  always #2 clk = ~clk;
     
  
  initial begin
    $monitor("%t | d=%b | clk=%b | reset=%b | q=%b",$time,d,clk,reset,q);
    $dumpfile("d_flipflop.vcd");
    $dumpvars(1,d_flipflop_tb);
  end
endmodule
