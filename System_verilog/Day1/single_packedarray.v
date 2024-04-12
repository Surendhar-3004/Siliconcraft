module single_packed_array_tb;
  
  bit [7:0] array;
  
  initial begin
    array=8'hb5;
  end
  
  initial begin
    for(int i=0; i<$size(array): i=i+1)
      $display("array[%0d]=%0b,i,array[i]);
               end
               endmodule
