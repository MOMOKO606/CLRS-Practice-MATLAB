function x=Radix_sort(x,k)
%  �������ܣ�����������x����radix sort
%  �㷨���� 8.3
%  T(n)=O(d(n+k))
%  ����nΪx����ĳ��ȣ�kΪ�û����壬�����Ϊ�����ַֽ�Ϊk������ʽ��Ҳ������Ϊ������
%  �ֽ��log2(k) bits�ģ�Ĭ��k=16������xΪb bits�ģ���d=ceil(b/log2(k))��

%  ����û��Ƿ�����k����û����Ĭ��k=16
if (nargin == 1)
    k=16;
end
%  ��¼x�������������䰴������
rim=size(x);
x=x(:);
%  ������x�ֽ��d digits��k������ʽ
[xdgt,n,d]=array2digit(x,k);
%  ��1��Ϊ�˺������Ƿ�Ǹ���������counting sort�г���0
xdgt=xdgt+1;
index=[1:n]';
for i=d:-1:2
    index=index(CountingSort4Indices(xdgt(index,i),n,k));
end
%  �߼�����pos������Ǹ�����λ��
pos=(xdgt(index,1) >= 1);
%  ��������ǰ��
x=[x(flipud(index(logical(1-pos))));x(index(pos))];
x=reshape(x,rim);


    