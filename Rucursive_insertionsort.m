function A=Rucursive_insertionsort(A,n)
%  递归形式的插入排序
%  算法导论 习题2.3-4
%  T(n)=θ(n^2)
if n>1
    A=Rucursive_insertionsort(A,n-1);
    A=Insertion(A,n);
end