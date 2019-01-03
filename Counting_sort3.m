function A=Counting_sort3(A)
%  修改的计数排序，inplace但是unstable
%  input中可以出现小于等于零的数
%  算法导论 Problems 8-2.b
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
j=1;
for i=1:k
    while (C(i) > 0)
        A(j)=i-temp;
        j=j+1;
        C(i)=C(i)-1;
    end
end
