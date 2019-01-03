function A=HEAP_DECREASE_KEY_2col(A,i,key)
%  函数功能：减小最小堆（min-heap）中，A（i）的key值。
%  A中的第一列为key，第二列为key对应的list号。
%  T（n）=O(lgn)
if (key > A(i,1))
    error('new key is larger than current key')
end
index=A(i,2);
while (i > 1 && key < A(Parent(i),1))
    A(i,:)=A(Parent(i),:);
    i=Parent(i);
end
A(i,1)=key;
A(i,2)=index;