function [A,y]=Heap_Extract_Max(A)
%  函数功能：提出并移除最大堆（max-heap）A的最大值。
n=length(A);
if (n < 1)
    errordlg('heap underflow');
end
y=A(1);  %  max-heap的最大值
A(1)=A(n);
A(n)=[];  %  删除最后一个元素
n=n-1;  %  数组长度减1
A=Max_Heapify_Recursive(A,1,n);