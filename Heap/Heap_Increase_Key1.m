function A=Heap_Increase_Key1(A,i,key)
%  函数功能：增大最大堆（max-heap）中，A（i）的key值。
if (key < A(i))
    errordlg('new key is smaller than current key');
end
A(i)=key;
while(i > 1 && A(Parent(i)) < key)
    A(i)=A(Parent(i));
    i=Parent(i);
end
A(i)=key;