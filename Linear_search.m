function index=Linear_search(A,v)
%  线性检索 
%  算法导论 习题2.1-3
%  T(n)=θ(n)
n=length(A);
index=[];
for i=1:n
    if(A(i) == v)
        index=[index,i];
    end
end
if (isempty(index))
    index=NaN;
end
        