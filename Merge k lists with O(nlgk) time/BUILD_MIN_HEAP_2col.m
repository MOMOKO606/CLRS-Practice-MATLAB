function A=BUILD_MIN_HEAP_2col(A)
%  函数功能：将A数组排列为最小堆(min heap)结构。
%  A中的第一列为key，第二列为key对应的list号。
%  T（n）=O(n)
[n,m]=size(A);
if ( m ~= 2)
    error('A不是一个2列数组')
    return
end
for i=floor(n/2):-1:1
    A=MIN_HEAPIFY_2col(A,i,n);
end