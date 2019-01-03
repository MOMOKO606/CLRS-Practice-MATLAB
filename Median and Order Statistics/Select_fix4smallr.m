function median=Select_fix4smallr(A,p,q,r)
%  对Select做出修改，当要求的r小于n/2时，使用comparison较少的算法
%  算法导论 Problems 9-3

n=q-p+1;
%  判断n的奇偶
if ( mod(n,2) )
    flag=1;  %  n为奇数
else
    flag=0;  %  n为偶数
end
%  要找的r大于n/2时直接调用Select
leftm=(n-flag)/2;
if ( r > leftm )
    median=Select(A,p,q,r);
    return
end
%  将A分成两段并成对比较，小的元素放到前半部分，大的放到后半部分
for i=p:p+leftm-1
    j=i+(n+flag)/2;
    if ( A(i) > A(j) )
        [A(i),A(j)]=Exchange(A(i),A(j));
    end
end
%  对前半部分递归寻找第r小的元素
pivot=Select(A,p,p+leftm-1,r);
v=Linear_search(A,pivot);
%  另存前半部分的index
index=[p:p+leftm-1];
%  调整A（为了Partition）和index数组
A=ArrayExchange(A,p,v);
index=ArrayExchange(index,p,v);
%  围绕pivot做Partition
[index,r]=Partition_index(A,index,p,p+leftm-1);
if ( flag == 1 )
    t=p+leftm;
else
    t=[];
end
%  镜像Partition的操作到右侧
index=[index,t,index+(n+flag)/2];
%  恢复A
A=ArrayExchange(A,p,v);
A=A(index);
%  将左右两侧前r小的元素取出，存入B中
if ( ~isempty(t) )
    t=A(p+leftm);
end
B=[A(p:r),t,A(p+(n+flag)/2:r+(n+flag)/2)];
%  调用Select在B中找第r小的元素
median=Select(B,1,length(B),r);

    


    
