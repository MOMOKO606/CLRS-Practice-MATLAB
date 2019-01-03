function A=Insertion_sort2(A)
%  使用Oblivious compare-exchange algorithm的Insertion sort
%  算法导论Problems 8-7

n=length(A);
for i=2:n
    for j=i-1:-1:1
        A=CompareExchange(A,j,j+1);
    end
end