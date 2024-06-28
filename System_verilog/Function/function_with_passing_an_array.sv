module function_with_passing_an_array;
  initial begin
  int array[5];
  void '(func_arr(array));
  $display("the elements are=%0p",array);
           end
           
           function automatic int func_arr(ref int arr[5]);
             foreach(arr[i])begin
               arr[i]=i+2;
             end
             return 0;
           endfunction
           endmodule

