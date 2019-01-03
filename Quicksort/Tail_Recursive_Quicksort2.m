function A=Tail_Recursive_Quicksort2(A,p,r)
%  用tail recursive方式写的Randomized Quicksort
%  相比Tail_Recursive_Quicksort1更加优化
%  移动区间并永远对其较小的子区间递归调用自身
%  其T(n)与Randomized Quicksort一样，但可以有效减少stack depth
while ( p < r )
    [A,q]=Randomized_Partition(A,p,r);
    if (q <= (p+r)/2)
        A=Tail_Recursive_Quicksort2(A,p,q-1);
        p=q+1;
    else
        A=Tail_Recursive_Quicksort2(A,q+1,r);
        r=q-1;
    end
end
