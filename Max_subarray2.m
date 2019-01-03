function [v,low,high]=Max_subarray2(A,p,r)
%  ���ܣ��ҳ������к���������������
%  Divide-and-conquer solution/algorithm
%  �㷨���� 4.1
%  T(n)=��(nlgn)
if (p == r)     %  base case
    v=A(p);
    low=p;
    high=p;
elseif (p < r)
    q=floor((p+r)/2);
    [lmax,li,lj]=Max_subarray2(A,p,q);
    [rmax,ri,rj]=Max_subarray2(A,q+1,r);
    [cmax,ci,cj]=Cross_max(A,p,q,r);
    if ((cmax > lmax) && (cmax > rmax))
        v=cmax;
        low=ci;
        high=cj;
    elseif ((lmax > rmax) && (lmax > cmax))
        v=lmax;
        low=li;
        high=lj;
    elseif ((rmax > lmax) && (rmax > cmax))
        v=rmax;
        low=ri;
        high=rj;
    end
end
        
   
