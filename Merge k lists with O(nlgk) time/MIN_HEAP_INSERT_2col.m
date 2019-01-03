function A=MIN_HEAP_INSERT_2col(A,key,index)
%  函数功能：对最小堆（min-heap）A插入key值，index的node。
%  A中的第一列为key，第二列为key对应的list号。
%  T（n）=O(lgn)
[n,m]=size(A);
n=n+1;
A(n,1)=+inf;
A(n,2)=index;
A=HEAP_DECREASE_KEY_2col(A,n,key);


