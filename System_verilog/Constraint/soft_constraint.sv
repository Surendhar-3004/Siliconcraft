class base;
  rand bit[8:0] data;
constraint soft_data_c { soft data == 0; }
 endclass

module test;
  base h=new();
initial repeat(10) begin
 assert(h.randomize);
  $display("The value is: %d",h.data);
 end 
endmodule
