function x=Get2ndmin(A)
%  找出A数组中第二小的元素 
%  算法导论 P215
%  T(n)=θ(n+lgn-2)

A=A(:);
n=length(A);
m=n;
%  检查A元素个数的奇偶，偶数则不做操作
if (mod(n,2))
    extra=A(1);
    A=A(2:n);
    m=n-1;
end
%  构建tree，C
C=A;
%  B为成对比较后较小的元素组成的数组
B=[];
while (~isempty(A))
    for i=1:2:m
        [s,l]=Compare(A(i),A(i+1));
        B=[B;s];
    end
    A=B;
    C=[B;C];
    m=m/2;
end
