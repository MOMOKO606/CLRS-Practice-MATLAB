function A=Selection_sort(A)
%  选择排序 
%  算法导论 习题2.2-2
%  T(n)=θ(n^2)
n=length(A);
for i=1:n-1
    key=A(i);
    k=i;
    for j=i+1:n
        if (A(j) < key)
            key=A(j);
            k=j;
        end
    end
    A(k)=A(i);
    A(i)=key;
end