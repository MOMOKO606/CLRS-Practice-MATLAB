function A=BUILD_MAX_DHEAP(A,d,n)
%  函数功能：将A数组排列为max d-ary heap结构。
p=PARENT(n,d);
for i=p:-1:1
    A=MAX_DHEAPIFY(A,i,d,n);
end
