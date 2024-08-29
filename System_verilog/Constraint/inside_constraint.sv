class base;
 rand bit[8:0] A;
constraint range { A inside {[0:63], [128:191]};}
 endclass

module test;
  base h=new();
initial repeat(10) begin
 assert(h.randomize);
  $display("The value is: %d",h.A);
 end 
endmodule
