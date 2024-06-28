// Code your design here
module calling_an_task_from_function;
          initial  
          begin
          $display("\t@ %0t ns, In the initial block",$time);  
          $display("\tcalling function");  
            #1 void'(function_call());  
          end  

  function int function_call();  
          fork  
          $display( "\t@ %0t ns I'm in function",$time);  
          $display("\t@ %0t ns, calling task from func",$time);  
          task_call;  
          join_none  
          endfunction  

          task task_call;  
          #1 $display( "\t@ %0t ns , I'm in task",$time);  
          #1 $display("\t@ %0t ns,leaving from task",$time);  
          endtask
endmodule
