function B=Counting_sort2(A)
%  �Ľ��ļ�������input�п��Գ���С�ڵ��������
%  �㷨���� 8.2
%  T(n)=��(n+k)
n=length(A);
k=max(A);
%  �����Сֵ�Ƿ�С�ڵ�����
%  ������ָ�ֵ��0����Ҫ�Ը�������C�ĸ�ֵ��һЩ�޸�
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
for i=n:-1:1
    B(C(A(i)+temp))=A(i);
    C(A(i)+temp)=C(A(i)+temp)-1;
end
    