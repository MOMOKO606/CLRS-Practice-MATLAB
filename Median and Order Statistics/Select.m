function x=Select(A,p,q,r)
%  Find the rth smallest element of A(p:q)
%  算法导论 P220
%  worst case running time:θ(n)

%  当元素个数不超过5时为base case
if ( q-p+1 <= 5 )
    A=Insertion_sort(A,p,q);
    x=A(p+r-1);
    return
end
%  将A分解为5个元素一组，至少n/5组
%  并对每组使用Insertion sort排序
c=floor((q-p+1)/5);
l=mod(q-p+1,5);
t=[];
for j=p:5:q-l
    A=Insertion_sort(A,j,j+4);
end
%  排列可能存在的元素个数小于5的组
if (l ~= 0)
    A=Insertion_sort(A,5*c+p,q);
    m=q-(5*c+p)+1;
    mid=ceil(m/2);  %  mid存放该组的中值
    t=A(p+5*c-1+mid);
end
%  将每组的中值存放B中
B=[A(p+2:5:q-l-2),t];
%  递归调用Select，选取B的中值，该值即为pivot
pivot=Select(B,1,length(B),ceil(length(B)/2));
%  找出pivot的下标，存于index
index=Linear_search(A,pivot);
%  将pivot和A[p]交换
A=ArrayExchange(A,p,index);
%  递归寻找第r小的元素
[A,k]=Partition(A,p,q);
key=k-p+1;
if ( r == key )
    x=A(k);
    return
elseif ( r < key )
    x=Select(A,p,k-1,r);
elseif ( r > key )
    x=Select(A,k+1,q,r-key);
end
    


    

