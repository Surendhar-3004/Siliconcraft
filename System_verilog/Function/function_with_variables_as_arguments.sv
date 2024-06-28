// Code your testbench here
// or browse Examples
module function_with_value_as_argument;
    int result;
  int a=4,b=5;
  initial begin
  
    result=sum(a,b);
  $display("the answer is:%0d",result);
  end
  
          function int sum(int var1,var2);    
          $display("entered into function");   
          return var1+var2;  
          endfunction  
endmodule
