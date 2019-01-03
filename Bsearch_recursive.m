function index=Bsearch_recursive(A,v,low,high)
%  递归形式的二分查找
%  算法导论 习题2.3-5
%  T(n)=θ(lgn)
%  缺点：需对A数组先递增排序，且A数组中的元素不能重复
if (low > high)
    index=NaN;
    return
end
mid=floor(0.5*(low+high));
if (A(mid) == v)
    index=mid;
    return
elseif (A(mid) < v)
    index=Bsearch_recursive(A,v,mid+1,high);
elseif (A(mid) > v)
    index=Bsearch_recursive(A,v,low,mid-1);
end
    