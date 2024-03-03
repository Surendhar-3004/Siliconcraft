module clk_generation(
 output reg clk);
  
initial begin
    clk=0;
    #2
    clk=1;
    #3
    clk=0;
    #10
    $finish;
  end
  
  initial begin
    $monitor("%t | clk=%b |",$time,clk);
  end
endmodule
