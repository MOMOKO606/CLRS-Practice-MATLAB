function max=Maximum(A)
%  找出数组A中的最大值
%  算法导论 P214
%  T(n)=θ(n-1)
A=A(:);
n=length(A);
max=A(1);
for i=2:n
    if (A(i) > max)
        max=A(i);
    end
end