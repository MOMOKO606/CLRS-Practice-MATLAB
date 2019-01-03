function median=FindMid(A,B,n,low,high)
%  TwoArrayMid2函数的子函数

if ( low > high )
    median=[];
    return
end
k=floor((low+high)/2);
if ( k == n && A(n) < B(1) )
    median=A(n);
    return
elseif ( B(n-k) <= A(k) && A(k) <= B(n-k+1) )
    median=A(k);
    return
elseif ( A(k) < B(n-k) )
    median=FindMid(A,B,n,k+1,high);
elseif ( A(k) > B(n-k+1) )
    median=FindMid(A,B,n,low,k-1);
end




