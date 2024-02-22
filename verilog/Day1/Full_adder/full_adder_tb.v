module full_adder_tb;
  reg a,b,cin;
  wire sum,carry;
  
  full_adder full_adder2(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry));
  
   initial begin
     a=0;b=0;cin=0;
     #10 a=0;b=0;cin=1;
     #10 a=0;b=1;cin=0;
     #10 a=0;b=1;cin=1;
     #10
     $finish;
   end
    
    initial begin
      $monitor("%t | a=%d | b=%d | cin=%d | sum=%d | carry=%d",$time,a,b,cin,sum,carry);
      $dumpfile("full_adder.vcd");
      $dumpvars(1,full_adder_tb);
    end
    endmodule
