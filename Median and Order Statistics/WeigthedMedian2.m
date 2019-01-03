function m=WeigthedMedian2(A,low,high,left,right)
%  ����A����ļ�Ȩ��λ����Ȩֵ��A1,A2,...,An��
%  left��right�ֱ��ʾ��һ��ݹ��У���������Ȩֵ�ĺͣ���ֵΪ0��
%  �ݹ鷽�������֡�
%  �㷨���� Problem 9-2 
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
    
    
    
    
    
    
    
    
    
    
    
    
