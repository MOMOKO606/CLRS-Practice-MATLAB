function [A,Max]=EXTRACT_DMAX(A,d,n)
%  函数功能：提出并移除max d-ary heap A的最大值。
if n < 1
    return
end
Max=A(1);
A(1)=A(n);
A(n)=[];
n=n-1;
A=MAX_DHEAPIFY(A,1,d,n);
