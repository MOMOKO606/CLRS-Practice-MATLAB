function y=int2digit(x,d,k)
%  �������ܣ������ͱ���xд��d��digits��k���Ƶ�����
%  ��ÿһ��digit��log2(k) bits�ġ�
x=double(x);
y=zeros(1,d);
while( x > 0 && d > 0 )
    y(d)=rem(x,k);
    x=floor(x/k);
    d=d-1;
end