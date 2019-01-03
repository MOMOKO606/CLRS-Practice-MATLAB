function A=MIN_HEAPIFY_2col(A,i,n)
%  函数功能：使堆（heap）A的i结点及其子结点保持最小堆性质（min-heap property）。
%  A中的第一列为key，第二列为key对应的list号。
%  采用递归算法。
%  T（n）=O(lgn)
l=Left(i);
r=Right(i);
if (l <= n && A(l,1) < A(i,1))
    smallest=l;
else
    smallest=i;
end
if (r <= n && A(r,1) < A(smallest,1))
    smallest=r;
end
if ( smallest ~= i)
    [A(i,:),A(smallest,:)]=Exchange(A(i,:),A(smallest,:));
    A=MIN_HEAPIFY_2col(A,smallest,n);
end
    
    
