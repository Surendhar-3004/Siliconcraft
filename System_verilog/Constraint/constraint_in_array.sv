// Code your design here
class MyClass;
rand bit [7:0] arr[5];
  constraint array_c {
 foreach (arr[i]) arr[i] inside {[10:100]};   }
    function void display();
        $display("Array values:");
 foreach (arr[i]) $display("arr[%0d] = %0d", i, arr[i]);
    endfunction
endclass
module tb;
   initial begin
        MyClass obj = new();
if (obj.randomize()) begin
            obj.display();
     end else begin
            $display("Randomization failed");
  end
    end
endmodule

