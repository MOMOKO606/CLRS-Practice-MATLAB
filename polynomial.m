function p=polynomial(a,n,x)
%  �������ʽ naive algorithm
%  nΪ������aΪ����ʽϵ����a(1,2,����n+1)
p=0;
temp=1/x;
for i=1:n+1
    temp=temp*x;
    p=p+a(i)*temp;
end