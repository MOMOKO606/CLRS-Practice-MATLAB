function [A,y]=Heap_Extract_Min(A)
%  �������ܣ�������Ƴ���С�ѣ�min-heap��A����Сֵ��
n=length(A);
if (n < 1)
    errordlg('heap underflow');
end
y=A(1);  %  max-heap����Сֵ
A(1)=A(n);
A(n)=[];  %  ɾ�����һ��Ԫ��
n=n-1;  %  ���鳤�ȼ�1
A=Min_Heapify_Recursive(A,1,n);