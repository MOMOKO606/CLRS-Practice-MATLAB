function [A,y]=Heap_Extract_Max(A)
%  �������ܣ�������Ƴ����ѣ�max-heap��A�����ֵ��
n=length(A);
if (n < 1)
    errordlg('heap underflow');
end
y=A(1);  %  max-heap�����ֵ
A(1)=A(n);
A(n)=[];  %  ɾ�����һ��Ԫ��
n=n-1;  %  ���鳤�ȼ�1
A=Max_Heapify_Recursive(A,1,n);