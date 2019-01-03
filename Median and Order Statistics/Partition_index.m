function [Index,q]=Partition_index(A,Index,p,r)
%  修改的Partition函数，返回数组不再是分好组的A数组，而是分好组的A数组的脚标。
%  Index为输入A数组的脚标。

n=r-p+1;
pivot=A(p);
i=p;
for j=p+1:r
    if (A(j) < pivot)
        i=i+1;
        [Index(i),Index(j)]=Exchange(Index(i),Index(j));
    end
end
[Index(p),Index(i)]=Exchange(Index(p),Index(i));  
q=i;
