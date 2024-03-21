module test_bench;

    parameter CLK_PERIOD = 10;

    reg [3:0] bcd_input;
    wire [6:0] seg_output;

    bcd_to_seven_segment_decoder dut (
        .bcd(bcd_input),
        .seg_out(seg_output)
    );

    reg clk = 0;
    always #(CLK_PERIOD/2) clk = ~clk;

    initial begin
        bcd_input = 4'b0000;
        
        #10 bcd_input = 4'b0001;
        #10 bcd_input = 4'b0010;
        #10 bcd_input = 4'b0011;
        #10 bcd_input = 4'b0100;
        #10 bcd_input = 4'b0101;
        #10 bcd_input = 4'b0110;
        #10 bcd_input = 4'b0111;
        #10 bcd_input = 4'b1000;
        #10 bcd_input = 4'b1001;
        #10 bcd_input = 4'b1010;

        #10 $finish;
    end
  
  initial begin
    $monitor("%t | bcd_input=%b | seg_output=%b",$time,bcd_input,seg_output);
  end

endmodule
