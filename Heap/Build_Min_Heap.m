function A=Build_Min_Heap(A)
%  �������ܣ���A��������Ϊ��С��(min heap)�ṹ��
n=length(A);
for i=n/2:-1:1
    A=Min_Heapify_Recursive(A,i,n);
end