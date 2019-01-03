function x=Rand_Select(A,p,r,i)
%  Find the ith smallest element of A(p:r)
%  Ëã·¨µ¼ÂÛ P216
%  expected running time:¦È(n)
%  worst case running time:O(n^2)

if (p == r)
    x=A(p);
    return
end
[A,q]=Rand_Partition(A,p,r);
k=q-p+1;
if (i == k)
    x=A(q);
elseif (k > i)
    x=Rand_Select(A,p,q-1,i);
else
    x=Rand_Select(A,q+1,r,i-k);
end
    