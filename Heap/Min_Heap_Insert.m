function A=Min_Heap_Insert(A,key)
%  �������ܣ�����С�ѣ�min-heap��A����keyֵԪ�ء�
n=length(A);
n=n+1;
A(n)=inf;
A=Heap_Decrease_Key(A,n,key);