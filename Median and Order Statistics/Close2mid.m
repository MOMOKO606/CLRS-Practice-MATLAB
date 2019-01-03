function y=Close2mid(A,p,r,k)
%  找出A中距离中位数最近（包括中位数）的k个数；
%  k <= n
%  算法导论 9.3-7
%  T(n)=O(n)

n=r-p+1;
right=ceil(n/2)+ceil((k-1)/2);
left=ceil(n/2)-floor((k-1)/2);
%  求中位数
mid=Select(A,p,r,ceil(n/2));
C=[p:r];
%  求各元素与中位数的距离（差值）
for i=1:n
    B(i)=A(i)-mid;
end
%  找出距离小于等于k的元素
for i=right:left-right:left
    if ( i > 0 )
        pivot=Select(B,p,r,i);
        index=Linear_search(B,pivot);
        B=ArrayExchange(B,index,p);
        C=ArrayExchange(C,index,p);
        [C,q]=Partition_index(B,C,p,r);
        [B,q]=Partition(B,p,r);
    end
end
y=A(C(left:right));



