function F=Fibonacci_squaring_recursive(n)
%  生成斐波那契数列;
%  T(n)=θ(n)
F(1)=0;
F(2)=1;
A=[1,1;1,0];
temp=1;
if (n >= 3)
    for i=3:n
        temp=temp*A;
        F(i)=temp(1,1);
    end
end