module tasks;
  integer ans;
  task sum(integer a,b,output int ans);
    begin
      ans=a+b;
    end
  endtask
      initial begin
        sum(2,5,ans);
        $display("ans=%0d",ans);
  end
endmodule
