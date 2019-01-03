function A=Heapsort(A)
%  ∂—≈≈–Ú 
%  À„∑®µº¬€ 6.4
%  T(n)=¶»(nlgn)
n=length(A);
A=Build_Max_Heap(A);
for i=n:-1:2
    [A(1),A(i)]=Exchange(A(1),A(i));
    n=n-1;
    A=Max_Heapify_Recursive(A,1,n);
end
    