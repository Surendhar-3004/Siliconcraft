class generator;
  mailbox mail;
  transaction t;
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task gen;
    t=new();
    repeat(10)begin
    t.randomize();
    mail.put(t);
     //$display("the value of wdata =%0d waddr=%0d",t.wdata,t.addr);
      #20;
    end
    
  endtask
  
endclass
