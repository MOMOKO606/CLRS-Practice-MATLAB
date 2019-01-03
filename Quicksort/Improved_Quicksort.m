function A=Improved_Quicksort(A,p,r)
%  改进的随机化快速排列（Randomized Quicksort）
%  采用median of 3 method划分方法；
%  采用改进的tail recursive形式的Quicksort。
while (p < r)
    [A,q]=Median_of_3_Partition(A,p,r);
    if (q <= (p+r)/2)
        A=Improved_Quicksort(A,p,q-1);
        p=q+1;
    else
        A=Improved_Quicksort(A,q+1,r);
        r=q-1;
    end
end
        