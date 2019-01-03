function [y,n,d]=array2digit(x,k)
%  函数功能：将整型数组x的每一个元素写成d+1个digits,第一个digit用来表示正负,k进制的数。
%  即每一个digit是log2(k) bits的。
%  输出数组y是n×d的矩阵。
if (~isinteger(x))
    error('输入数组必须为整型')
end
switch(class(x))
    case ('int8')
        b=7;
    case('uint8')
        b=8;
    case('int16')
        b=15;
    case('uint16')
        b=16;
    case('int32')
        b=31;
    case('uint32')
        b=32;
    case('int64')
        b=63;
    case('uint64')
        b=64;
end
n=length(x);
d=ceil(b/log2(k))+1;
y=zeros(n,d);
for i=1:n
    y(i,:)=[sign(x(i)),int2digit(abs(x(i)),d-1,k)];
end