function F=Fibonacci_squaring_recursive(n)
%  ����쳲���������;
%  T(n)=��(n)
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