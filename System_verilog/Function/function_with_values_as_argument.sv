module function_with_value_as_argument;
  int result=sum(4,5);
  initial begin
  $display("the answer is:%0d",result);
  end
  
          function int sum(int var1,var2);    
          $display("entered into function");   
          return var1+var2;  
          endfunction  
endmodule 
