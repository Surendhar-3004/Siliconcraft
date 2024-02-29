module prime_number(
  input  a,count,
output reg y);
  
  always @(*) begin
    for(int i=1;i<=a;i=i+1) begin
      if(a % i== 0)
          y=count+1;
    end
    $display(y);
    begin
    if (y==1)
          $display("it is a prime number");
      else if(y>=1)
           $display("it is not a prime number");
    end
     end
 endmodule
