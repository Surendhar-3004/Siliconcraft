module jk_flipflop_tb;
  reg j,k,clk;
  wire q;
  
  jk_flipflop jkf(.j(j),.k(k),.clk(clk),.q(q));
  
  initial begin
    clk=0;j=0;k=1;
     #20 
    $finish;
  end
  
      always #4 j = ~j;
  	  always #6 k= ~k;
  	  always #2 clk = ~clk;
     
  
  initial begin
    $monitor("%t | j=%b | k=%b | clk=%b | q=%b",$time,j,k,clk,q);
    $dumpfile("jk_flipflop.vcd");
    $dumpvars(1,jk_flipflop_tb);
  end
endmodule
