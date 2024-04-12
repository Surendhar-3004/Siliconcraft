module Two_D_packedarray;
  
  bit[3:0] [7:0] array_value;
  
  initial begin
    array_value=32'h0102_0304;
  
    $display ("array_value=0x%h",array_value);
  end
  
  initial begin
    for(int i=0;i<=3; i++)
      $display("The value at [	%0d]=%h",i,array_value[i]);
  end
endmodule
