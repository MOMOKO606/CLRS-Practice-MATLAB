function C=Matrix_multip_brute(A,B)
%  矩阵相乘的原始方法
%  算法导论 4.2
%  T(n)=θ(n^3)
[arows,acols]=size(A);
[brows,bcols]=size(B);
if (acols ~= brows);
    disp('A的列数和B的行数应该相等!');
    return
end
for i=1:arows
    for j=1:bcols
        C(i,j)=0.0;
        for k=1:acols
            C(i,j)=C(i,j)+A(i,k)*B(k,j);
        end
    end
end
        