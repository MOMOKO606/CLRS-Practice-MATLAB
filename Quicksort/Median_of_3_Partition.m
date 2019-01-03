function [A,q]=Median_of_3_Partition(A,p,r)
%  改进的Partition程序；
%  从A中随机选出3个数，再选中间的数作为pivot；
%  产生n/2:n/2划分的概率是朴素Partition概率的1.5倍；
%  产生n/3:2n/3划分的概率是朴素Partition概率的1.44倍；
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
    
