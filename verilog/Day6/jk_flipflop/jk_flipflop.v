module jk_flipflop
  (input j,k,clk,
   output reg q);
  
  initial
    q=0;
  always @(posedge clk)
        begin 
      if(clk==0)
        q=q;
          else if( j==0 && k==0)
        q=q;
          else if( j==1 && k==1)
        q=~q;
      
      else 
        q=j;
    end
endmodule
