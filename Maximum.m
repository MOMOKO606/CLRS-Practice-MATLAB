function max=Maximum(A)
%  �ҳ�����A�е����ֵ
%  �㷨���� P214
%  T(n)=��(n-1)
A=A(:);
n=length(A);
max=A(1);
for i=2:n
    if (A(i) > max)
        max=A(i);
    end
end