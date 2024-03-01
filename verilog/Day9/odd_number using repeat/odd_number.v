module odd_number(
  input int a);
  
  always @(*) begin 
    if(a%2!=0)
      $display(a," is a odd number");
    else
      $display(a," is not a odd number");
  end
endmodule
