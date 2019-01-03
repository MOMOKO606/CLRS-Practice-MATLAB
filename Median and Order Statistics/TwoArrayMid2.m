function median=TwoArrayMid2(X,Y)
%  X与Y为两个长度为n，排序好的数组；
%  函数功能:求得这2n个数的中位数；
%  算法导论 9.3-8 P223
%  T(n)=O(lgn)  

n=length(X);
median=FindMid(X,Y,n,1,n);
if ( isempty(median) )
    median=FindMid(Y,X,n,1,n);
end