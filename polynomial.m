function p=polynomial(a,n,x)
%  计算多项式 naive algorithm
%  n为阶数，a为多项式系数，a(1,2,…，n+1)
p=0;
temp=1/x;
for i=1:n+1
    temp=temp*x;
    p=p+a(i)*temp;
end