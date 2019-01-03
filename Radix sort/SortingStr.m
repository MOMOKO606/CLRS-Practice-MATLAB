function x=SortingStr(x,p,q,col)
%  函数功能：只用counting sort递归排序长度不同的字符串（仅限小写字母a～z）。
%  思想：
%  利用字母排序性质：第1位字母小即整个string都小。
%  我们从左到右对每一位（列）排序并分组，对每组的下一列递归排序。
%  参数：col为列数；p,q表示x[p,...,q]。

if(p < q)
%  对第col列，第p到q行排序
    [x,C]=Countstr(x,p,q,col);
%  利用C构建滑动窗，分成round组，每组范围：pnext～qnext
    round=length(C);
    pnext=p;
    qnext=p-1;
    for i=1:round
        qnext=qnext+C(i);
        x=SortingStr(x,pnext,qnext,col+1);
        pnext=qnext+1;
    end
end
