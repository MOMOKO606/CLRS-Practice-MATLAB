function A=K_sort(A,k)
%  �������ܣ�k-sorts A����
%  �㷨����Problems 8-5(d)
%  T(n)=��(nlg(n/k));

n=length(A);
if ( mod(n,k))
    error('nӦ�����Ա�k����')
    return
end
r=n/k;
for i=1:k
    indice=[i:k:n];
    B=A(indice);
    B=Randomized_Quicksort(B,1,r);
    A(indice)=B;
end
