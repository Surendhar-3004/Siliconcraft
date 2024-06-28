module function_with_value_from_expression;
    int result;
  initial begin
  
    result=sum(4,5);
    $display("the answer is:%0d",sum(4,5));
  end
  
          function int sum(int var1,var2);    
          $display("entered into function");   
          return var1+var2;  
          endfunction  
endmodule
