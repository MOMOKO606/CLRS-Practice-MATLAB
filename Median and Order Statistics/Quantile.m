function [A,q]=Quantile(A,p,r,k)
%  对A[p...r]进行k等份划分,分位数从小到大排列，且每组中其他元素小于该组的分位数。
%  分位数的下标存于q
%  算法导论 9.3-6 P223
%  T（n）=O(nlgk)

n=r-p+1;
%  检测A数组是否能被等分为k份
if ( mod(n,k))
    disp('A数组不能被平分为k等份！')
    return
else
    d=n/k;  %  d表示每段的长度
end
if p > r
    q=[];
    return
end
if ( k == 1 )  %  base case
    q=[];
    return
end
%  调用Select找到分位数的中点，即pivot
pivot=Select(A,p,r,d*floor((k+1)/2));
%  找出pivot的下标，存于index
index=Linear_search(A,pivot);
%  将pivot和A[p]交换
A=ArrayExchange(A,p,index);
%  通过pivot划分A数组
[A,key2]=Partition(A,p,r);
%  对左半边递归分段
[A,key1]=Quantile(A,p,key2,floor((k+1)/2));
%  对右半边递归分段
[A,key3]=Quantile(A,key2+1,r,floor(k/2));
%  等分数下标存放于q中
q=[key1,key2,key3];
    