function A=Max_Heapify_Recursive(A,i,n)
%  �������ܣ�ʹ�ѣ�heap��A��i��㼰���ӽ�㱣���������ʣ�max-heap property����
%  ���õݹ��㷨��
%  T��n��=O(lgn)
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
    A=Max_Heapify_Recursive(A,largest,n);
end