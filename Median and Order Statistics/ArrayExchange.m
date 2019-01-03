function A=ArrayExchange(A,i,j)
key=A(i);
A(i)=A(j);
A(j)=key;
end