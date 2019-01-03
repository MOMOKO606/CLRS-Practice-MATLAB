function p=polynom_horner(a,n,x)
%  霍纳法则计算多项式
%  n为阶数，a为多项式系数，a(1,2,…，n+1)
p=0;
for i=n+1:-1:1
    p=a(i)+x*p;
end
    