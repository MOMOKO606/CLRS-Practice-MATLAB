function A=Insertion_sort(A)
%  �������� 
%  �㷨���� 2.1����
%  T(n)=��(n^2)

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
    