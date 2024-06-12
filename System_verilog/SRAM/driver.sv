class driver;
  virtual inter vi;
  mailbox mail;
    transaction t;
    
    function new(virtual inter vi,mailbox mail);
      this.vi=vi;
      this.mail=mail;
    endfunction
      
      task drive;
        repeat (10)begin
           t=new();
           mail.get(t);
         
          //#40 t.w_en=1'b0;
          vi.wdata=t.wdata;
          vi.addr=t.addr;
          vi.w_en=1'b1;
         // vi.w_en=t.w_en;
          #20
          vi.w_en=1'b0; 
          t.rdata=vi.rdata;
          //t.addr=vi.addr;
         
         // $display("the driver of wdata =%0d waddr=%0d",t.wdata,t.addr);
          #20;
        end
      endtask
  
endclass


