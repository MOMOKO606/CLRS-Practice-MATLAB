function A=Insertion(A,n)
%  递归形式插入排序的子函数
%  功能为将A(n)插入前面A(1,…,n-1)个数中。
key=A(n);
j=n-1;
while (j > 0 && A(j) > key )
    A(j+1)=A(j);
    j=j-1;
end
A(j+1)=key;
