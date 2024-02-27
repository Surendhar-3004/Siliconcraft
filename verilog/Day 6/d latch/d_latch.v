module d_latch
  (input d,en,reset,
   output reg q);

  
  always @(en)
     begin
    if(!reset)
      q<=d;
  	else if(reset)
      q<=1'b0;
   end
endmodule
