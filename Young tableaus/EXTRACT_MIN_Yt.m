function [A,y]=EXTRACT_MIN_Yt(A)
%  函数功能：提出并移除杨氏矩阵（young tableaus）A的最小值。
[m,n]=size(A);
y=A(1,1);
A(1,1)=A(m,n);
A(m,n)=inf;
A=Youngify(A,1,1);
