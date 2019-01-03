function A=Build_Max_Heap(A)
%  函数功能：将A数组排列为最大堆(max heap)结构。
n=length(A);
for i=n/2:-1:1
    A=Max_Heapify_Recursive(A,i,n);
end