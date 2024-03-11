module moore_sequence_detector_1001(
  input clk,reset,in,
  output reg[2:0]present,next,
  output reg out );
  
  parameter [3:0] s0=3'b000,
  				  s1=3'b001,
  				  s2=3'b010,
  				  s3=3'b011,
  				  s4=3'b100;
  
  
  always @(posedge clk)
    begin
    if(reset)
      present<=s0;
  else
    present<=next;
    end
  
  
  always @(present,in)
    begin
      case(present)
      s0:
        begin
        out=0;
          if(in==1)
          next<=s1;
        else
          next<=s0;
        end
       s1:
         begin
          out=0;
           if(in==0)
          next<=s2;
        else
         next<=s1;
         end
        s2:
          begin
          out=0;
            if(in==0)
            next<=s3;
            else
             next<=s1;
          end
            s3:
              begin
                out=0;
                if(in==1)
                 next<=s4;
                else
                  next<=s0;
              end
        s4:
          begin
            out=1;
            if(in==1)
              next<=s1;
            else
              next<=s0;
          end
      endcase
        end
        endmodule
        
