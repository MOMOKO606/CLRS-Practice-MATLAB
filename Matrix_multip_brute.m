function C=Matrix_multip_brute(A,B)
%  ������˵�ԭʼ����
%  �㷨���� 4.2
%  T(n)=��(n^3)
[arows,acols]=size(A);
[brows,bcols]=size(B);
if (acols ~= brows);
    disp('A��������B������Ӧ�����!');
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
        