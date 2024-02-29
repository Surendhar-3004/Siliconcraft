module tasks;
  integer ans;
  task sum(integer a,b,output int c);
    begin
      c=a+b;
    end
  endtask
      initial begin
        sum(2,5,ans);
        $display("ans=%0d",ans);
  end
endmodule
