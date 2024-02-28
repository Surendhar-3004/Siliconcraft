module dff_async_tb;
  reg d,clk,reset;
  wire  q;
  
  dff_async dff(.d(d),.clk(clk),.reset(reset),.q(q));
  
  initial begin
    d=0;clk=0;reset=1;
    #20
    $finish;
  end
  
  always #4 d=~d;
  always #4 clk=~clk;
  always #2 reset=~reset;
  
  initial begin
    $monitor("%t | d=%b | clk=%b | reset=%b | q=%b",$time,d,clk,reset,q);
    $dumpfile("dff_async.vcd");
    $dumpvars(1,dff_async_tb);
  end
endmodule
