// Code your design here
module function_with_reference_of_variable;
          int result,addend,augend;  
          initial  
          begin   
          addend=5;  
          augend=3;  
          $display("\tBefore calling function -> addend = %0d , augend = %0d",addend,augend);  
          $display("\tcalling the functions");  
          result=sum_without_ref(addend,augend);  
          $display("\tafter calling function without ref -> addend = %0d, augend =%0d",addend,augend);  
          result=sum_with_ref(addend,augend);  
          $display("\tafter calling function with ref -> addend = %0d, augend =%0d",addend,augend);  
          end  
          function automatic int sum_with_ref(ref int var1,var2);  
          int temp;  
          $display("\n\tentered into with ref function");  
          temp=var1;  
          var1=var2;  
          var2=temp;  
          $display("\tswapped variables by using ref ");  
          return var1+var2;  
          endfunction : sum_with_ref  

          function int sum_without_ref(input int var1,var2);  
          int temp;  
          $display("\n\tentered into without ref function");  
          temp=var1;  
          var1=var2;  
          var2=temp;  
          $display("\tswapped variables by without using ref ");  
          return var1+var2;  
          endfunction : sum_without_ref  
endmodule
