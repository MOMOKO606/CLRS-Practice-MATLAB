function [A,q]=Partition3(A,p,r)
%  Quicksort的子程序，其作用是“分组”
%  T(n)=θ(n)
%  逆序Partition
pivot=A(r);
i=p-1;
for j=p:r-1
    if (A(j) > pivot)
        i=i+1;
        [A(j),A(i)]=Exchange(A(j),A(i));
    end
end
[A(i+1),A(r)]=Exchange(A(i+1),A(r));
q=i+1;