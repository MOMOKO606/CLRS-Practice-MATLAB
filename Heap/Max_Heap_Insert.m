function A=Max_Heap_Insert(A,key)
%  函数功能：对最大堆（max-heap）A插入key值元素。
n=length(A);
n=n+1;
A(n)=-inf;
A=Heap_Increase_Key(A,n,key);