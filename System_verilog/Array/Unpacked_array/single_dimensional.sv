module single_dimensional_unpacked_array;
  
  int array1[4];
  
  initial begin
    array1='{1,2,3,4};
    
    foreach(array1[i]) begin
      $display("the value at array1[%0d] is:%0d",i,array1[i]);
    end
  end
endmodule
