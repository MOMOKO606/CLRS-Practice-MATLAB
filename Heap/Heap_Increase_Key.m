function A=Heap_Increase_Key(A,i,key)
%  函数功能：增大最大堆（max-heap）中，A（i）的key值。
if (key < A(i))
    errordlg('new key is smaller than current key');
end
A(i)=key;
while(i > 1 && A(Parent(i)) < A(i))
    [A(Parent(i)),A(i)]=Exchange(A(Parent(i)),A(i));
    i=Parent(i);
end