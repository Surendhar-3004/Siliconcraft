module prime_check(
  input reg [7:0]a);
  always @(*) begin
    if((a==2)||(a%2==1)&&(a%3==1)||(a%3==2))
      $display("It is a prime number");
      else 
        $display("It is not a prime number");
    end
endmodule
