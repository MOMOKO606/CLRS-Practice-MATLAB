function median=TwoArrayMid2(X,Y)
%  X��YΪ��������Ϊn������õ����飻
%  ��������:�����2n��������λ����
%  �㷨���� 9.3-8 P223
%  T(n)=O(lgn)  

n=length(X);
median=FindMid(X,Y,n,1,n);
if ( isempty(median) )
    median=FindMid(Y,X,n,1,n);
end