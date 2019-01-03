function B=CountingSort4Indices(A,n,k)
%  函数功能：Radix sort中使用的counting sort子函数。
%  与一般的counting sort的区别是：不输出排序好的A数组，而是输出排序好的A的序号。
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
    