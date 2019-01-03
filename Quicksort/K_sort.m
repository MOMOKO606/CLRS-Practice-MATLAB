function A=K_sort(A,k)
%  函数功能：k-sorts A数组
%  算法导论Problems 8-5(d)
%  T(n)=θ(nlg(n/k));

n=length(A);
if ( mod(n,k))
    error('n应当可以被k整除')
    return
end
r=n/k;
for i=1:k
    indice=[i:k:n];
    B=A(indice);
    B=Randomized_Quicksort(B,1,r);
    A(indice)=B;
end
