function y=Count_Range_ab1(A,a,b)
%  �������� ��ͳ��A������[a,b]�����ڵ�Ԫ�ظ�����
%  �㷨���� 8.2-4
%  T(n)=��(n+k)
n=length(A);
k=max(A);
%  �����Сֵ�Ƿ�С�ڵ�����
l=min(A);
if (l <= 0)
   temp=abs(l)+1;
   k=k+temp;
else
    temp=0;
end
for i=1:k
    C(i)=0;
end
for i=1:n
    C(A(i)+temp)=C(A(i)+temp)+1;
end
y=0;
for i=a+temp:b+temp
    y=y+C(i);
end