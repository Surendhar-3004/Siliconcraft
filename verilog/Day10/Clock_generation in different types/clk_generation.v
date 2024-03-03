module clk_generation(
 output reg clk);
  
initial begin
  
    clk=0;
    #20
    $finish;
  end
  
  initial begin
    forever
      #2 clk=~clk;
  end
  
  initial begin
    $monitor("%t | clk=%b |",$time,clk);
  end
endmodule
