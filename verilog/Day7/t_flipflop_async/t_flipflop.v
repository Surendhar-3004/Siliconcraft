 module t_flipflop (
  t,clk,reset ,q
  );
  input t, clk, reset ; 
  output q;
  reg q;
  always @ ( posedge clk or negedge reset)
  if (~reset) begin
    q <= 1'b0;
  end else if (t) begin
    q <=  ! q;
  end
  
  endmodule
