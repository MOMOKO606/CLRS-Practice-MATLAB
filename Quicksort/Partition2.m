function [A,q]=Partition2(A,p,r)
%  Quicksort的子程序，其作用是“分组”
%  T(n)=θ(n)
%  从左端开始划分
pivot=A(p);
i=p;
for j=p+1:r
    if(A(j) <= pivot)
        i=i+1;
        [A(i),A(j)]=Exchange(A(i),A(j));
    end
end
[A(i),A(p)]=Exchange(A(i),A(p));
q=i;