function min=Minimum(A)
%  找出数组A中的最小值
%  算法导论 P214
%  T(n)=θ(n-1)
A=A(:);
n=length(A);
min=A(1);
for i=2:n
    if (A(i) < min)
        min=A(i);
    end
end