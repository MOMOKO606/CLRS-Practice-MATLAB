function A=Tail_Recursive_Quicksort1(A,p,r)
%  用tail recursive方式写的Randomized Quicksort
%  移动区间并永远对其左子区间递归调用自身
%  其T(n)与Randomized Quicksort一样，但可以减少stack depth
%  其栈深度的worst case为永远产生n-1:1划分时，stack depth=n
%            best case为永远产生1:n-1划分时，stack depth=1
while ( p < r )
    [A,q]=Randomized_Partition(A,p,r);
    A=Tail_Recursive_Quicksort1(A,p,q-1);
    p=q+1;
end
