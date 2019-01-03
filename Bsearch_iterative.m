function index=Bsearch_iterative(A,v,low,high)
%  迭代形式的二分查找
%  算法导论 习题2.3-5
%  T(n)=θ(lgn)
%  缺点：需对A数组先递增排序，且A数组中的元素不能重复
while(low <= high)
    mid=floor(0.5*(low+high));
    if (A(mid) == v)
        index=mid;
        return
    elseif (A(mid) < v)
        low=mid+1;
    elseif (A(mid) > v)
        high=mid-1;
    end
end
index=NaN;