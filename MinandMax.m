function [min,max]=MinandMax(A)
%  ͬʱ�ҳ�����A�е����ֵ����Сֵ
%  �㷨���� P214
%  T(n)=��(3n/2-2)
A=A(:);
n=length(A);
%  ����С���ֵ����ֵ
if (mod(n,2))
    min=A(1);
    max=A(1);
    si=2;
else
    [min,max]=Compare(A(1),A(2));
    si=3;
end
%  ÿ��Ԫ����Ҫ�Ա�����
for i=si:2:n
    [s,l]=Compare(A(i),A(i+1));
    if (s < min)
        min=s;
    end
    if (l > max)
        max=l;
    end
end

    