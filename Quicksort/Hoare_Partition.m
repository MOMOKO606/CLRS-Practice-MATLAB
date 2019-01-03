function [A,q]=Hoare_Partition(A,p,r)
%  Quicksort的子程序，其作用是“分组”
%  T(n)=θ(n)
%  从两端开始划分，最初的Partition形式
pivot=A(p);
i=p;
j=r;
while (i < j)
    while (A(j) > pivot)
        j=j-1;
    end
    while(A(i) < pivot)
        i=i+1;
    end
    if (i < j)
        [A(i),A(j)]=Exchange(A(i),A(j));
        j=j-1;
        i=i+1;
    end
end
q=j;
        