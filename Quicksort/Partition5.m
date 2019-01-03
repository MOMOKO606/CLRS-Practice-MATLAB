function [A,q]=Partition(A,p,r)
%  Quicksort的子程序，其作用是“分组”
%  T(n)=θ(n)
%  从左端开始划分；
%  为了防止当A数组所有元素相等时出现q=r的worst case，将等于pivot的元素
%  交替地放在pivot两边的位置。
pivot=A(p);
i=p;
flag=1;
for j=p+1:r
    if ( A(j) < pivot )
        i=i+1;
        [A(i),A(j)]=Exchange(A(i),A(j));
    elseif ( A(j) == pivot )
        flag=flag+1;
        if( mod(flag,2) ) 
            i=i+1;
            [A(i),A(j)]=Exchange(A(i),A(j));
        end
    end
end
q=i;
[A(p),A(q)]=Exchange(A(p),A(q));
        
        