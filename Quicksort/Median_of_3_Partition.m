function [A,q]=Median_of_3_Partition(A,p,r)
%  �Ľ���Partition����
%  ��A�����ѡ��3��������ѡ�м������Ϊpivot��
%  ����n/2:n/2���ֵĸ���������Partition���ʵ�1.5����
%  ����n/3:2n/3���ֵĸ���������Partition���ʵ�1.44����
for i=1:3
    y(i)=round(rand()*(r-p))+p;
end
if (A(y(1)) <= A(y(2)))
    if (A(y(3)) >= A(y(2)))
        [A(r),A(y(2))]=Exchange(A(r),A(y(2)));
    elseif (A(y(3)) >= A(y(1)))
        [A(r),A(y(3))]=Exchange(A(r),A(y(3)));
    else
        [A(r),A(y(1))]=Exchange(A(r),A(y(2)));
    end
else
    if (A(y(3)) >= A(y(1)))
         [A(r),A(y(1))]=Exchange(A(r),A(y(1)));
    elseif (A(y(3)) >= A(y(2)))
        [A(r),A(y(3))]=Exchange(A(r),A(y(3)));
    else
        [A(r),A(y(2))]=Exchange(A(r),A(y(2)));
    end
end
[A,q]=Partition1(A,p,r);
    
