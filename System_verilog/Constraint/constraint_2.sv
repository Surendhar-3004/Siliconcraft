class Packet;
 rand bit [7:0] addr;
 rand bit [7:0] data;
  constraint data_c { data >= 10; }
endclass

module cons;
  Packet pkt=new();
  
  initial begin
    repeat(5) begin
      pkt.randomize();
      $display("addr=%d data=%d",pkt.addr,pkt.data);
    end
  end
endmodule

