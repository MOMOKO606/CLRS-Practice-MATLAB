function [A,inver]=Merge_sort(A,p,r)
%  归并排序 
%  算法导论 2.3内容
%  T(n)=θ(nlgn)
%  函数实现2个功能：1.统计A数组中的inversion个数；2.对A数组递增排序。
%  inver为A中inversion的个数
inver=0;
if p < r
    q=floor(0.5*(p+r));
    [A,a]=Merge_sort(A,p,q);
    [A,b]=Merge_sort(A,q+1,r);
    [A,c]=Merge(A,p,q,r);
    inver=inver+a+b+c;
end