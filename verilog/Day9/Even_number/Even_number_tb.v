module even_number_tb;
  reg a;
  
  even_number even(.a(a));
  
  initial begin
    a=8;
    #10 a=7;
    
    #10
    $finish;
  end
endmodule
    
