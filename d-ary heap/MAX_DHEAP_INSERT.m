function A=MAX_DHEAP_INSERT(A,key,d)
%  �������ܣ���max d-ary heap A����keyֵԪ�ء�
n=length(A);
n=n+1;
A(n)=-inf;
A=DHEAP_INCREASE_KEY(A,n,key,d);