function min=Minimum(A)
%  �ҳ�����A�е���Сֵ
%  �㷨���� P214
%  T(n)=��(n-1)
A=A(:);
n=length(A);
min=A(1);
for i=2:n
    if (A(i) < min)
        min=A(i);
    end
end