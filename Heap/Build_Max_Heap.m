function A=Build_Max_Heap(A)
%  �������ܣ���A��������Ϊ����(max heap)�ṹ��
n=length(A);
for i=n/2:-1:1
    A=Max_Heapify_Recursive(A,i,n);
end