function A=Quicksort(A,p,r)
%  朴素快速排序
%  Worst time:T(n)=θ(n^2);
%  Best time:T(n)=θ(nlgn);
%  Average time:T(n)=θ(nlgn);
%  一般情况下，快速排序比归并排序快3倍
if ( p < r )
    [A,q]=Partition2(A,p,r);
    A=Quicksort(A,p,q-1);
    A=Quicksort(A,q+1,r);
end