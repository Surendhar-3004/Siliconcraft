class Packet;
  rand bit [3:0] addr;
  rand bit [3:0] data;
  constraint addr_c { data <= 10; }
endclass

module cons;
  Packet pkt=new();
  
  initial begin
    repeat(5) begin
      pkt.randomize();
      pkt.addr_c.constraint_mode(0);
      $display("addr=%d data=%d",pkt.addr,pkt.data);
    end
  end
endmodule
