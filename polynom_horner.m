function p=polynom_horner(a,n,x)
%  ���ɷ���������ʽ
%  nΪ������aΪ����ʽϵ����a(1,2,����n+1)
p=0;
for i=n+1:-1:1
    p=a(i)+x*p;
end
    