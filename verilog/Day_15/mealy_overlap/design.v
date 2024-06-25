module mealyoverlap(input bit clk, rst, a, output reg out);
  
  reg [1:0] state,nextstate;
  parameter s0 = 2'b00;
  parameter s1 = 2'b01;
  parameter s2 = 2'b10;
  parameter s3 = 2'b11;
   
 
  always @(posedge clk or posedge rst)begin
    if(rst==0)
      state<=s0;
    else 
      state<=nextstate;
   
  end
  always@(*)begin
    case(state)
      s0:begin
        
        if(a==1) begin
          nextstate <= s1;
          out<=1'b0;
        end
        else nextstate<= s0;
      end
      s1:begin
        
        if(a==0) begin
          nextstate <=s2;
          out<=1'b0;
        end
        else nextstate <= s1;
      end
      s2:begin
       
        if(a==1) begin
          nextstate <=s3;
          out<=1'b0;
        end
        else
          nextstate<=s0;
         
        
      end
      s3:begin
        
        if(a==0)
          out<=1'b1;
        else 
          out<=1'b0;
        
        if(a==0) 
          nextstate <=s0;
        else 
          nextstate <=s2;
      end
      default : begin
        out <=1'b0;
        nextstate <=s0;
      end
        endcase
  end
      
      endmodule
