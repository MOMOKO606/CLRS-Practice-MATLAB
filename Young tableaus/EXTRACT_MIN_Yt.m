function [A,y]=EXTRACT_MIN_Yt(A)
%  �������ܣ�������Ƴ����Ͼ���young tableaus��A����Сֵ��
[m,n]=size(A);
y=A(1,1);
A(1,1)=A(m,n);
A(m,n)=inf;
A=Youngify(A,1,1);
