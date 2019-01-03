function index=CHILDREN(i,d)
%  函数功能：计算一个d-ary heap中，i节点（node）的children节点的位置（序号）。
start=(i-1)*d+1;
for j=1:d
    index(j)=start+j;
end