function A=Counting_sort3(A)
%  �޸ĵļ�������inplace����unstable
%  input�п��Գ���С�ڵ��������
%  �㷨���� Problems 8-2.b
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
j=1;
for i=1:k
    while (C(i) > 0)
        A(j)=i-temp;
        j=j+1;
        C(i)=C(i)-1;
    end
end
