function A=MIN_HEAPIFY_2col(A,i,n)
%  �������ܣ�ʹ�ѣ�heap��A��i��㼰���ӽ�㱣����С�����ʣ�min-heap property����
%  A�еĵ�һ��Ϊkey���ڶ���Ϊkey��Ӧ��list�š�
%  ���õݹ��㷨��
%  T��n��=O(lgn)
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
    
    
