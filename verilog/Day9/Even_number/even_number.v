module even_number(
  input int a);
  always @(*) begin
    if(a%2==0)begin
      $display("it is a even number");
    end
    else
      $display("it is not a even number");
  end
endmodule
