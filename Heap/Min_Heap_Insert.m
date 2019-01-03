function A=Min_Heap_Insert(A,key)
%  函数功能：对最小堆（min-heap）A插入key值元素。
n=length(A);
n=n+1;
A(n)=inf;
A=Heap_Decrease_Key(A,n,key);