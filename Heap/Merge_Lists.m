function y=Merge_Lists(x)
k=length(x);
n=0;
for i=1:k
    n=n+length(x(i).value);
end
n=n-k;
A=Build_Min_Heap(A);