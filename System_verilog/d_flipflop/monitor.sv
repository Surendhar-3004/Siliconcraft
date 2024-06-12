class monitor;
  
  transaction pkt;
  
  mailbox mail;
  
  virtual operation vintf;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task mon;
    
    repeat(5)
      begin
    
    pkt=new();
    
    mail.put(pkt);
    
    pkt.d=vint.d;
    pkt.q=vint.q;
      end
  endtask
endclass
    
