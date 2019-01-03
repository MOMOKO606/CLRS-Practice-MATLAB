function [y,n,d]=array2digit(x,k)
%  �������ܣ�����������x��ÿһ��Ԫ��д��d+1��digits,��һ��digit������ʾ����,k���Ƶ�����
%  ��ÿһ��digit��log2(k) bits�ġ�
%  �������y��n��d�ľ���
if (~isinteger(x))
    error('�����������Ϊ����')
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