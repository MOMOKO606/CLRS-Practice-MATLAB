function A=Youngify(A,i,j)
%  �������ܣ�ʹ���Ͼ���young tableaus��A��(i,j)����������Ͼ������ʡ�
%  ���õݹ��㷨��
%  T��n��=O(m+n)
[m,n]=size(A);
smallesti=i;
if (i+1<=m && A(i+1,j)<A(i,j))
    smallesti=i+1;
end
if (smallesti ~= i)
    temp=A(i,j);
    A(i,j)=A(smallesti,j);
    A(smallesti,j)=temp;
    A=Youngify(A,smallesti,j);
end
if (j+1<=n && A(i,j+1)<A(i,j))
    smallestj=j+1;
else
    smallestj=j;
end
if (smallestj ~= j)
    temp=A(i,j);
    A(i,j)=A(i,smallestj);
    A(i,smallestj)=temp;
    A=Youngify(A,i,smallestj);
end
