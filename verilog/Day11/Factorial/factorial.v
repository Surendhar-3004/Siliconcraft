module factorial(
  input [3:0] a,
  output reg[10:0] y);
  
  always @(*)begin
   integer i;
     y=1;
    if(a==1)
      y=1;
    else for(i=1;i<=a;i=i+1) 
        y=y*i;
    end
endmodule
