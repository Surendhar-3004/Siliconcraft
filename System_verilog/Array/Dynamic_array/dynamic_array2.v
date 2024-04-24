module dynamic_array;
  int d1[];
  int d[]={9,1,8,3,4,4};
  
  initial begin
    d1=new[6];
    
    foreach (d1[i]) begin
      d1[i]=i;
    end
    
     $display("d1 = %p, size = %0d", d1, d1.size);
    d1.delete();
    $display("size of the array d1:%0d",d1.size);
    d.reverse();
    $display("reversed array:%p",d);
    d.sort();
    $display("sorted array:%p",d);
    d.reverse();
    $display("reverse sorted array:%p",d);
    d.shuffle();
    $display("shuffled array:%p",d);
  end
endmodule
