module queue;
  int j=1;
  int q[$]={0,2,5};
 
  initial begin
	q.insert(1,j);
    $display("%p",q);
    q.delete(1);
    $display(q);
    q.push_front(7);
    $display(q);
    q.push_back(9);
    q.pop_back();
     $display(q);
    q.pop_front();
     $display(q);
    q.reverse();
     $display(q);
    q.sort();
     $display(q);
     $display(q);
    q.rsort();
     $display(q);
    q.shuffle();
     $display(q);
    
  end
endmodule
