function m=WeigthedMedian1(A)
%  ����A����ļ�Ȩ��λ����Ȩֵ��A1,A2,...,An
%  Brute force solution
%  �㷨���� Problem 9-2 
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
    
