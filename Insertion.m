function A=Insertion(A,n)
%  �ݹ���ʽ����������Ӻ���
%  ����Ϊ��A(n)����ǰ��A(1,��,n-1)�����С�
key=A(n);
j=n-1;
while (j > 0 && A(j) > key )
    A(j+1)=A(j);
    j=j-1;
end
A(j+1)=key;
