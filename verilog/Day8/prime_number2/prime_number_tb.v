module prime_check_tb;
  reg [7:0]a;
  prime_check prime_check(.a(a));
  initial begin
    a=213;
    #10 a=7;
    #10
    $finish;
  end
endmodule
