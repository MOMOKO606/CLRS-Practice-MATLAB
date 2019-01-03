function F=Fibonacci_squaring_recursive_1(n)
%  生成斐波那契数列的第n个数;
%  T(n)=θ(lgn)
if (n == 1)
    F=0;
elseif (n == 2)
    F=1;
elseif (n == 3)
    F=1;
elseif (n > 3)
    A=[1,1;1,0];
    y=Recursive_powering(A,n-2);
    F=y(1,1);
end