function x=Rand_Select_iterative(A,p,q,r)
%  ������ʽ��Rand_Select
%  �㷨���� P219

while (p < q)
    [A,i]=Rand_Partition(A,p,q);
    k=i-p+1;
    if (k == r)
        x=A(i);
        return
    elseif (r < k)
        q=i-1;
    elseif (r > k)
        p=i+1;
        r=r-k;
    end
end
x=A(p);