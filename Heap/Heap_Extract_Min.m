function [A,y]=Heap_Extract_Min(A)
%  函数功能：提出并移除最小堆（min-heap）A的最小值。
n=length(A);
if (n < 1)
    errordlg('heap underflow');
end
y=A(1);  %  max-heap的最小值
A(1)=A(n);
A(n)=[];  %  删除最后一个元素
n=n-1;  %  数组长度减1
A=Min_Heapify_Recursive(A,1,n);