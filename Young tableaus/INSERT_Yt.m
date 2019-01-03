function A=INSERT_Yt(A,key)
%  函数功能：对m×n的杨氏矩阵的A（m，n）处插入key值，并调整矩阵。
%  T(n)=O(m+n)
[m,n]=size(A);
A(m,n)=key;
A=Youngify_beta(A,m,n);