function A=Youngify_beta(A,i,j)
%  �������ܣ�ʹ���Ͼ���young tableaus��A��(i,j)����������Ͼ������ʡ�
%  ���õݹ��㷨��
%  T��n��=O(m+n)
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