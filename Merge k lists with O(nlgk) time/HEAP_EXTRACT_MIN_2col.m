function [A,Min,MinI]=HEAP_EXTRACT_MIN_2col(A)
%  函数功能：提出并移除最小堆（min-heap）A的最小值Min极其对应的list号MinI。
%  A中的第一列为key，第二列为key对应的list号。
%  T（n）=O(lgn)
[n,m]=size(A);
Min=A(1,1);
MinI=A(1,2);
[A(1,:),A(n,:)]=Exchange(A(1,:),A(n,:));
A(n,:)=[];
A=MIN_HEAPIFY_2col(A,1,n-1);