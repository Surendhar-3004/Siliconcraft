
module function_with_variable_as_positional_argument;
  int result;
initial  
          begin   
          result=sum(.var1(5),.var2(6));  
          $display("\treturned from function and");  
          $display("\tstored the value of sum in result");  
          $display("\n\t@ %0t ns, value of sum is %0d",$time,result);      
          end  
          function int sum(int var1,var2); 
          $display("entered into function");   
          return var1+var2;  
          endfunction 
endmodule
