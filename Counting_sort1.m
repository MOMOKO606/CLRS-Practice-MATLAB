function B=Counting_sort1(A)
%  计数排序
%  算法导论 8.2
%  T(n)=θ(n+k)
n=length(A);
k=max(A);
for i=1:k
    C(i)=0;
end
for i=1:n
    C(A(i))=C(A(i))+1;
end
for i=2:k
    C(i)=C(i-1)+C(i);
end
for i=n:-1:1
    B(C(A(i)))=A(i);
    C(A(i))=C(A(i))-1;
end