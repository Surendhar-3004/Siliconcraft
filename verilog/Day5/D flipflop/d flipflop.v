module d_flipflop
  (input d,clk,reset,
   output reg q);
  
  always @(posedge clk)
    if(!reset) begin
      q=1'b1;
    end
  else
    q=1'b0;
endmodule
