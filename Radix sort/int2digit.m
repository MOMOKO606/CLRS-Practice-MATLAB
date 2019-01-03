function y=int2digit(x,d,k)
%  函数功能：将整型变量x写成d个digits，k进制的数。
%  即每一个digit是log2(k) bits的。
x=double(x);
y=zeros(1,d);
while( x > 0 && d > 0 )
    y(d)=rem(x,k);
    x=floor(x/k);
    d=d-1;
end