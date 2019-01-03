function A=Heap_Decrease_Key(A,i,key)
%  函数功能：减小最小堆（min-heap）中，A（i）的key值。
if (key > A(i))
    errordlg('new key is larger than current key');
end
A(i)=key;
while(i > 1 && A(Parent(i)) > A(i))
    [A(Parent(i)),A(i)]=Exchange(A(Parent(i)),A(i));
    i=Parent(i);
end