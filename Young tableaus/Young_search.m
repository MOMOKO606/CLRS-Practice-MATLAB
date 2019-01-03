function [x,y]=Young_search(A,i,j,key)
%  函数功能：在杨氏矩阵中寻找与key值相同的元素的位置。
%  T(n)=0(m+n)
[m,n]=size(A);
if (i>m || j<1)
    x=NaN;
    y=NaN;
    return
end
if (key == A(i,j))
    x=i;
    y=j;
elseif (key > A(i,j))
    [x,y]=Young_search(A,i+1,j,key);
elseif (key < A(i,j))
    [x,y]=Young_search(A,i,j-1,key);
end