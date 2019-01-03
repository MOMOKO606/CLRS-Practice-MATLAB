function A=Insertion_sort(A)
%  插入排序 
%  算法导论 2.1内容
%  T(n)=θ(n^2)

n=length(A);
for i=2:n
    key=A(i);
    j=i-1;
    while (j > 0 && A(j) > key )
        A(j+1)=A(j);
        j=j-1;
    end
    A(j+1)=key;
end
    