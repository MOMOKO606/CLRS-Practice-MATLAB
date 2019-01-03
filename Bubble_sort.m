function A=Bubble_sort(A)
%  √∞≈›≈≈–Ú 
%  À„∑®µº¬€ Problems 2-2
%  T(n)=¶»(n^2)
n=length(A);
for i=1:n-1
    for j=n:-1:i+1
        if (A(j) < A(j-1))
            temp=A(j);
            A(j)=A(j-1);
            A(j-1)=temp;
        end
    end
end