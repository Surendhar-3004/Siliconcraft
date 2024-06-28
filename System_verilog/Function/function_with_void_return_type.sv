module function_with_void_returntype;
          initial  
          begin  
          display("\t ----output for function void return type-----");  
          display("\t passing string to function for displaying");  
          end  
          function void display(string str);  
          $display("%s",str);    
          endfunction: display  
endmodule
