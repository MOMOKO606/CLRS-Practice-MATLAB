function [A,Max]=EXTRACT_DMAX(A,d,n)
%  �������ܣ�������Ƴ�max d-ary heap A�����ֵ��
if n < 1
    return
end
Max=A(1);
A(1)=A(n);
A(n)=[];
n=n-1;
A=MAX_DHEAPIFY(A,1,d,n);
