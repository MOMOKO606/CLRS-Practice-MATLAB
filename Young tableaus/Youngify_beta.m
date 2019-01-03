function A=Youngify_beta(A,i,j)
%  函数功能：使杨氏矩阵（young tableaus）A的(i,j)结点满足杨氏矩阵性质。
%  采用递归算法。
%  T（n）=O(m+n)
[m,n]=size(A);
if (i-1>=1 && A(i-1,j)>A(i,j))
    largesti=i-1;
else
    largesti=i;
end
if (largesti ~= i)
    temp=A(i,j);
    A(i,j)=A(largesti,j);
    A(largesti,j)=temp;
    A=Youngify_beta(A,largesti,j);
end
if (j-1>=1 && A(i,j-1)>A(i,j))
    largestj=j-1;
else
    largestj=j;
end
if (largestj ~= j)
    temp=A(i,j);
    A(i,j)=A(i,largestj);
    A(i,largestj)=temp;
    A=Youngify_beta(A,i,largestj);
end