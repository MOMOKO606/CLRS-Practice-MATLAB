function A=BUILD_MIN_HEAP_2col(A)
%  �������ܣ���A��������Ϊ��С��(min heap)�ṹ��
%  A�еĵ�һ��Ϊkey���ڶ���Ϊkey��Ӧ��list�š�
%  T��n��=O(n)
[n,m]=size(A);
if ( m ~= 2)
    error('A����һ��2������')
    return
end
for i=floor(n/2):-1:1
    A=MIN_HEAPIFY_2col(A,i,n);
end