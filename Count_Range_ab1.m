function y=Count_Range_ab1(A,a,b)
%  函数功能 ：统计A数组中[a,b]区间内的元素个数。
%  算法导论 8.2-4
%  T(n)=θ(n+k)
n=length(A);
k=max(A);
%  检测最小值是否小于等于零
l=min(A);
if (l <= 0)
   temp=abs(l)+1;
   k=k+temp;
else
    temp=0;
end
for i=1:k
    C(i)=0;
end
for i=1:n
    C(A(i)+temp)=C(A(i)+temp)+1;
end
y=0;
for i=a+temp:b+temp
    y=y+C(i);
end