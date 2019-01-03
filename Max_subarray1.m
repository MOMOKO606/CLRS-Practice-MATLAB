function [v,low,high]=Max_subarray1(A)
%  功能：找出数组中和最大的连续子数组
%  Brute-force solution/algorithm
%  算法导论 4.1
%  T(n)=θ(n^2)
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