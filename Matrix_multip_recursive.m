function C=Matrix_multip_recursive(A,B)
%  矩阵相乘的一般递归算法
%  只试用于方阵
%  算法导论 4.2
%  T(n)=θ(n^3)
[arows,acols]=size(A);
[brows,bcols]=size(B);
if( arows ~= acols || brows ~= bcols || arows ~= bcols )
    disp('递归方法只能计算方阵');
    return
end
if (arows == 1)
    C=A*B;
    return
else
    n=arows/2;
    for i=1:n
        for j=1:n
            A11(i,j)=A(i,j);
            B11(i,j)=B(i,j);
            A12(i,j)=A(i,n+j);
            B12(i,j)=B(i,n+j);
            A21(i,j)=A(n+i,j);
            B21(i,j)=B(n+i,j);
            A22(i,j)=A(n+i,n+j);
            B22(i,j)=B(n+i,n+j);
        end
    end
    p=Matrix_multip_recursive(A11,B11);
    q=Matrix_multip_recursive(A12,B21);
    C11=p+q;
    p=Matrix_multip_recursive(A11,B12);
    q=Matrix_multip_recursive(A12,B22);
    C12=p+q;
    p=Matrix_multip_recursive(A21,B11);
    q=Matrix_multip_recursive(A22,B21);
    C21=p+q;
    p=Matrix_multip_recursive(A21,B12);
    q=Matrix_multip_recursive(A22,B22);
    C22=p+q;
    C=[C11,C12;C21,C22];
end
    