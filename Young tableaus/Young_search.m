function [x,y]=Young_search(A,i,j,key)
%  �������ܣ������Ͼ�����Ѱ����keyֵ��ͬ��Ԫ�ص�λ�á�
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