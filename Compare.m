function [s,l]=Compare(x,y)
%  �Ƚ�x��y�Ĵ�С��С�ķ���s����ķ���l
%  �㷨���� Chapter 9
if (x < y)
    s=x;
    l=y;
else
    s=y;
    l=x;
end