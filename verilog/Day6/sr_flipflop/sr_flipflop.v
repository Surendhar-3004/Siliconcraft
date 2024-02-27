module sr_flipflop
  (input s,r,clk,
   output reg q);
  
  initial 
    q=0;
  always @(posedge clk)
    begin 
      if(clk==0)
        q=q;
      else if( s==0 && r==0)
        q=q;
      else if( s==1 && r==1)
        q=1'bx;
      
      else 
        q=s;
    end
endmodule
