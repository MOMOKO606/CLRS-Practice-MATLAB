function A=Max_Heap_Insert(A,key)
%  �������ܣ������ѣ�max-heap��A����keyֵԪ�ء�
n=length(A);
n=n+1;
A(n)=-inf;
A=Heap_Increase_Key(A,n,key);