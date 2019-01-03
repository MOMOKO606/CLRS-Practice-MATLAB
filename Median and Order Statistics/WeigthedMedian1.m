function m=WeigthedMedian1(A)
%  计算A数组的加权中位数，权值即A1,A2,...,An
%  Brute force solution
%  算法导论 Problem 9-2 
%  T(n)=O(nlgn)

n=length(A);
[A,inver]=Merge_sort(A,1,n);
sum=0;
j=0;
while (sum < 0.5)
    j=j+1;
    sum=sum+A(j);
end
m=A(j);
    
