function A=Insertion_sort2(A)
%  ʹ��Oblivious compare-exchange algorithm��Insertion sort
%  �㷨����Problems 8-7

n=length(A);
for i=2:n
    for j=i-1:-1:1
        A=CompareExchange(A,j,j+1);
    end
end