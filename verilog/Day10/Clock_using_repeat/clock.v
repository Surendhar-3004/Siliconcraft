module clk_generation(
 output reg clk);
  
initial begin
  
    clk=0;
    #20
    $finish;
  end
  
  initial begin
    repeat(5) begin
      #2 clk=~clk;
  end
  end
  
  initial begin
    $monitor("%t | clk=%b |",$time,clk);
  end
endmodule
