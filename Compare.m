function [s,l]=Compare(x,y)
%  比较x，y的大小，小的放入s，大的放入l
%  算法导论 Chapter 9
if (x < y)
    s=x;
    l=y;
else
    s=y;
    l=x;
end