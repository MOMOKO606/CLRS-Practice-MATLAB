function A=INSERT_Yt(A,key)
%  �������ܣ���m��n�����Ͼ����A��m��n��������keyֵ������������
%  T(n)=O(m+n)
[m,n]=size(A);
A(m,n)=key;
A=Youngify_beta(A,m,n);