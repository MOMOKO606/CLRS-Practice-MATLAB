function A=MIN_HEAP_INSERT_2col(A,key,index)
%  �������ܣ�����С�ѣ�min-heap��A����keyֵ��index��node��
%  A�еĵ�һ��Ϊkey���ڶ���Ϊkey��Ӧ��list�š�
%  T��n��=O(lgn)
[n,m]=size(A);
n=n+1;
A(n,1)=+inf;
A(n,2)=index;
A=HEAP_DECREASE_KEY_2col(A,n,key);


