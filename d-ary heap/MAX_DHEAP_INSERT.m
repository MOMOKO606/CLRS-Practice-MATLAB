function A=MAX_DHEAP_INSERT(A,key,d)
%  函数功能：对max d-ary heap A插入key值元素。
n=length(A);
n=n+1;
A(n)=-inf;
A=DHEAP_INCREASE_KEY(A,n,key,d);