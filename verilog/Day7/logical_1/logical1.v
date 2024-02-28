module logical_operators(
  input [3:0]a,b,c,d,
  output reg x,y);

  always @(*) begin
	if ((a==b)&&(c==b)) 
	x=1;   
	else
	x=!a;

	if((a!=d)||(b==c))
	y=1;                
	else
	y=0;                
  end
endmodule
