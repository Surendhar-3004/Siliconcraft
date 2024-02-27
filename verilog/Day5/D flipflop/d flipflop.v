module d_flipflop
  (input d,clk,reset,
   output reg q);
always @(posedge clk or reset)
     begin
    if(!reset)
      q<=d;
  	else if(reset)
      q<=1'b0;
   end
endmodule
