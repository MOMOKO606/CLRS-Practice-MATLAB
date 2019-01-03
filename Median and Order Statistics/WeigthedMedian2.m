function m=WeigthedMedian2(A,low,high,left,right)
%  计算A数组的加权中位数，权值即A1,A2,...,An。
%  left和right分别表示上一层递归中，左右两侧权值的和，初值为0。
%  递归方法，二分。
%  算法导论 Problem 9-2 
%  T(n)=O(n)

n=high-low+1;
if ( n == 1 )
    m=A(low);
    return
end
if ( n == 2 )
    if (A(low) < A(high))
        m=A(high);
    else
        m=A(low);
    end
    return
end
pivot=Select(A,low,high,ceil(n/2));
index=Linear_search(A,pivot);
A=ArrayExchange(A,low,index);
[A,mid]=Partition(A,low,high);
wl=0.0;
for i=low:mid-1
    wl=wl+A(i);
end
wr=0.0;
for i=mid+1:high
    wr=wr+A(i);
end
wl=wl+left;
wr=wr+right;
if (wl < 0.5 && wr < 0.5 )
    m=pivot;
    return
elseif ( wl > 0.5 )
    right=right+wr;
    m=WeigthedMedian2(A,low,mid,left,right);
elseif (wr > 0.5 )
    left=left+wl;
    m=WeigthedMedian2(A,mid,high,left,right);
end
    
    
    
    
    
    
    
    
    
    
    
    
