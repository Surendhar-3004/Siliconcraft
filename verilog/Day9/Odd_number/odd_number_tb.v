module odd_number_tb;
  reg [7:0] a;
  
  odd_number odd(.a(a));
  
  initial begin
    a=7;
    #10 a=12;
    #10
    $finish;
  end
endmodule
