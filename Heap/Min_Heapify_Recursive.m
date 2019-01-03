function A=Min_Heapify_Recursive(A,i,n)
%  函数功能：使堆（heap）A的i结点及其子结点保持最小堆性质（min-heap property）。
%  采用递归算法。
%  T（n）=O(lgn)
l=Left(i);
r=Right(i);
if (l <= n && A(l) < A(i))
    smallest=l;
else
    smallest=i;
end
if (r <= n && A(r) < A(smallest))
    smallest=r;
end
if (smallest ~= i)
    [A(smallest),A(i)]=Exchange(A(smallest),A(i));
    A=Min_Heapify_Recursive(A,smallest,n);
end