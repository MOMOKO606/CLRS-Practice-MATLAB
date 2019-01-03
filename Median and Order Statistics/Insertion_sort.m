function A=Insertion_sort(A,p,r)

n=r-p+1;
for i=p+1:r
    key=A(i);
    j=i-1;
    while (j >= p && A(j) > key )
        A(j+1)=A(j);
        j=j-1;
    end
    A(j+1)=key;
end
    