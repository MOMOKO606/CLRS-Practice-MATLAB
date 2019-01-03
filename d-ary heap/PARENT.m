function j=PARENT(i,d)
%  函数功能：计算一个d-ary heap中，i节点（node）的父节点的位置（序号）。
j=ceil((i-1)/d);