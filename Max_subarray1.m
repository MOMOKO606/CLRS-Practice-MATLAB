function [v,low,high]=Max_subarray1(A)
%  ���ܣ��ҳ������к���������������
%  Brute-force solution/algorithm
%  �㷨���� 4.1
%  T(n)=��(n^2)
n=length(A);
v=-inf;
for i=1:n
    sum=0;
    for j=i:n
        sum=sum+A(j);
        if (sum > v)
            v=sum;
            low=i;
            high=j;
        end
    end
end