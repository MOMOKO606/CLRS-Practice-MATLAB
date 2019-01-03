function A=Min_Heapify_Recursive(A,i,n)
%  �������ܣ�ʹ�ѣ�heap��A��i��㼰���ӽ�㱣����С�����ʣ�min-heap property����
%  ���õݹ��㷨��
%  T��n��=O(lgn)
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