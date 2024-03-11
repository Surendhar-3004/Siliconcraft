
module updowncounter( reset,j,k,clk,q,qb);
  input reset,j,k,clk;
  output [3:0] q,qb;
  wire w0,w1,w2;
 
  jk_ff j1(reset,j,k,clk,q[0],qb[0]);
  and(w0,q[0],q[0]);
  jk_ff j2(reset,w0,w0,clk,q[1],qb[1]);
  and(w1,w0,q[1]);
  jk_ff j3(reset,w1,w1,clk,q[2],qb[2]);
  and(w2,w1,q[2]);
  jk_ff j4(reset,w2,w2,clk,q[3],qb[3]);
  
endmodule

module jk_ff(reset,j,k,clk,q,qb);
  input reset,j,k,clk;
  output reg q,qb;
  always@(posedge(clk))
    begin
      if(reset==1) begin
      q=1'b0;
      end
      else begin
      if((j==0)&&(k==0))
        begin
          q=q;
        end
      else if ((j==0)&&(k==1))
        begin
          q=1'b0;
        end
      else if ((j==1)&&(k==0))
        begin
          q=1'b1;
        end
      else if ((j==1)&&(k==1))
        begin
          q=~q;
        end
      end
      qb=~q;
    end
endmodule
