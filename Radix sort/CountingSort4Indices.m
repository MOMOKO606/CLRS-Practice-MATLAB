function B=CountingSort4Indices(A,n,k)
%  �������ܣ�Radix sort��ʹ�õ�counting sort�Ӻ�����
%  ��һ���counting sort�������ǣ����������õ�A���飬�����������õ�A����š�
C=zeros(1,k);
for i=1:n
    C(A(i))=C(A(i))+1;
end
for i=2:k
    C(i)=C(i)+C(i-1);
end
for i=n:-1:1
    B(C(A(i)))=i;
    C(A(i))=C(A(i))-1;
end
    