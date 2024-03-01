module odd_number_tb;
  reg [7:0]a;
  
  odd_number odd(.a(a));
  
  initial begin
    repeat(4)
    #10 a=$random;
    #20
    $finish;
  end
  endmodule
