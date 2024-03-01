module even_number(
  input int a);
  
  always @(*) begin 
    if(a%2==0)
      $display(a," is a even number");
    else
      $display(a," is not a even number");
  end
endmodule
