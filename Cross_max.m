function [cmax,ci,cj]=Cross_max(A,p,q,r)
%  Max_subarray2�ӳ��򣬹����Ǽ����硰���ҡ������������������顣
left_sum=-inf;
sum=0.0;
for i=q:-1:p
    sum=sum+A(i);
    if (sum > left_sum)
        left_sum=sum;
        ci=i;
    end
end
right_sum=-inf;
sum=0.0;
for i=q+1:r
    sum=sum+A(i);
    if (sum > right_sum)
        right_sum=sum;
        cj=i;
    end
end
cmax=left_sum+right_sum;

    