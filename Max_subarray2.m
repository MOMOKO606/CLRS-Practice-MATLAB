function [v,low,high]=Max_subarray2(A,p,r)
%  功能：找出数组中和最大的连续子数组
%  Divide-and-conquer solution/algorithm
%  算法导论 4.1
%  T(n)=θ(nlgn)
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
        
   
