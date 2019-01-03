function [min,max]=MinandMax(A)
%  同时找出数组A中的最大值和最小值
%  算法导论 P214
%  T(n)=θ(3n/2-2)
A=A(:);
n=length(A);
%  对最小最大值赋初值
if (mod(n,2))
    min=A(1);
    max=A(1);
    si=2;
else
    [min,max]=Compare(A(1),A(2));
    si=3;
end
%  每对元素需要对比三次
for i=si:2:n
    [s,l]=Compare(A(i),A(i+1));
    if (s < min)
        min=s;
    end
    if (l > max)
        max=l;
    end
end

    