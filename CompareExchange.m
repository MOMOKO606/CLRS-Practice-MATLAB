function A=CompareExchange(A,i,j)
%  Oblivious Compare-Exchange Algorithm
%  �㷨����Problems 8-7

if ( A(i) > A(j) )
    temp=A(i);
    A(i)=A(j);
    A(j)=temp;
end