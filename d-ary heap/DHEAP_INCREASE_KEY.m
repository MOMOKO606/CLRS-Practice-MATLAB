function A=DHEAP_INCREASE_KEY(A,i,key,d)
%  函数功能：增大max d-ary heap中，A（i）的key值。
if A(i) > key
    return
end
while (i > 1 && A(PARENT(i,d)) < key)
    A(i)=A(PARENT(i,d));
    i=PARENT(i,d);
end
A(i)=key;
    