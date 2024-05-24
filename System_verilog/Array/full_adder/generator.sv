
class generator;
  transaction t;
  mailbox m;
  
  function new(mailbox m);
    this.m=m;
  endfunction
  
  task gene;
    
    repeat (5) begin
  
    t=new();
    t.randomize();
//     t.a=1'b1;
//     t.b=1'b1;
//     t.cin=1'b1;
    m.put(t);
    $display("a=%d b=%d cin=%d ",t.a,t.b,t.cin);
    $display("packe is sent to driver");
    end
    
  endtask
    
endclass


