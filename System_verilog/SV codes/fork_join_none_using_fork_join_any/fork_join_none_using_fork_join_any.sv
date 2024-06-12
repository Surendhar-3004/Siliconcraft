// Code your testbench here
// or browse Examples
module testmodule;
  
  initial begin
    
    int completed_blocks=0;
    
    fork
      begin
        $display("start of first parallel block");
        #10;
        $display("end of first parallel block");
        completed_blocks++;
      end
      
      begin
        $display("start of second parallel block");
        #20;
        $display("end of second parallel block");
        completed_blocks++;
      end
    
    join_none
    repeat (2) @(posedge $time);
    
    $display("code after the fork_join construct");
  end
endmodule
