function y=Count_Range_ab2(A,a,b)
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
for i=2:k
    C(i)=C(i-1)+C(i);
end
%  ���aΪA����Сֵʱ
if (a == l)
    y=C(b+temp);
    return
end
y=C(b+temp)-C(a+temp-1);

