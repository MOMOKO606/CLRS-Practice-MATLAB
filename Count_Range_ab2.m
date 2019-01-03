function y=Count_Range_ab2(A,a,b)
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
for i=2:k
    C(i)=C(i-1)+C(i);
end
%  如果a为A的最小值时
if (a == l)
    y=C(b+temp);
    return
end
y=C(b+temp)-C(a+temp-1);

