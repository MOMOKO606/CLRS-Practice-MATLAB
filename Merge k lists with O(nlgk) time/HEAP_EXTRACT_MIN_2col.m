function [A,Min,MinI]=HEAP_EXTRACT_MIN_2col(A)
%  �������ܣ�������Ƴ���С�ѣ�min-heap��A����СֵMin�����Ӧ��list��MinI��
%  A�еĵ�һ��Ϊkey���ڶ���Ϊkey��Ӧ��list�š�
%  T��n��=O(lgn)
[n,m]=size(A);
Min=A(1,1);
MinI=A(1,2);
[A(1,:),A(n,:)]=Exchange(A(1,:),A(n,:));
A(n,:)=[];
A=MIN_HEAPIFY_2col(A,1,n-1);