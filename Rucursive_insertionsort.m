function A=Rucursive_insertionsort(A,n)
%  �ݹ���ʽ�Ĳ�������
%  �㷨���� ϰ��2.3-4
%  T(n)=��(n^2)
if n>1
    A=Rucursive_insertionsort(A,n-1);
    A=Insertion(A,n);
end