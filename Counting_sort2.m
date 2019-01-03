function B=Counting_sort2(A)
%  改进的计数排序，input中可以出现小于等于零的数
%  算法导论 8.2
%  T(n)=θ(n+k)
n=length(A);
k=max(A);
%  检测最小值是否小于等于零
%  如果出现负值或0，需要对辅助数组C的赋值作一些修改
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
for i=n:-1:1
    B(C(A(i)+temp))=A(i);
    C(A(i)+temp)=C(A(i)+temp)-1;
end
    