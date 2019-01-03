function A=Build_Min_Heap(A)
%  函数功能：将A数组排列为最小堆(min heap)结构。
n=length(A);
for i=n/2:-1:1
    A=Min_Heapify_Recursive(A,i,n);
end