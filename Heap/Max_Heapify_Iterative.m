function A=Max_Heapify_Iterative(A,i,n)
%  函数功能：使堆（heap）A的i结点及其子结点保持最大堆性质（max-heap property）。
%  采用跌倒算法。
%  T（n）=O(lgn)
while(i <= n && 2*i <= n)
    l=Left(i);
    r=Right(i);
    if (l <= n && A(l) > A(i))
        largest=l;
    else
        largest=i;
    end
    if (r <= n && A(r) > A(largest))
        largest=r;
    end
    if (largest ~= i)
        [A(largest),A(i)]=Exchange(A(largest),A(i));
        i=largest;
    end
end