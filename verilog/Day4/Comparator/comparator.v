module comparator
  (input a,b,
   output reg equal,lesser,greater);
  
always@* begin
  equal=0;
  lesser=0;
  greater=0;
  
  if(a>b)
    greater=1;
  
    else if(a<b) 
      lesser=1;
    
    else
      equal=1;
  end
endmodule
