module event_module;
  event e1;
  
  task process_A();
    $display("@%0t: 1",$time);
    ->e1;
    $display("@%0t: 2",$time);
  endtask
  
  task process_B();
    $display("@%0t: 3",$time);
    @e1;
    $display("@%0t: 4",$time);
  endtask
  
  task process_c();
    $display("@%0t: 5",$time);
    wait(e1.triggered);
    $display("@%0t: 6",$time);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
      process_c();
    join
  end
endmodule
