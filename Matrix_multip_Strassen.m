function C=Matrix_multip_Strassen(A,B)
%  矩阵相乘的Strassen方法
%  只适用于方阵
%  算法导论 4.2
%  T(n)=θ(n^lg7)
[arows,acols]=size(A);
[brows,bcols]=size(B);
if( arows ~= acols || brows ~= bcols || arows ~= bcols )
    disp('Strassen方法只能计算方阵');
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
    S1=B12-B22;
    S2=A11+A12;
    S3=A21+A22;
    S4=B21-B11;
    S5=A11+A22;
    S6=B11+B22;
    S7=A12-A22;
    S8=B21+B22;
    S9=A11-A21;
    S10=B11+B12;
    P1=Matrix_multip_Strassen(A11,S1);
    P2=Matrix_multip_Strassen(S2,B22);
    P3=Matrix_multip_Strassen(S3,B11);
    P4=Matrix_multip_Strassen(A22,S4);
    P5=Matrix_multip_Strassen(S5,S6);
    P6=Matrix_multip_Strassen(S7,S8);
    P7=Matrix_multip_Strassen(S9,S10);
    C11=P5+P4-P2+P6;
    C12=P1+P2;
    C21=P3+P4;
    C22=P5+P1-P3-P7;
    C=[C11,C12;C21,C22];
end