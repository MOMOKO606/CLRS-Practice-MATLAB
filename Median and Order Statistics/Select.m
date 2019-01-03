function x=Select(A,p,q,r)
%  Find the rth smallest element of A(p:q)
%  �㷨���� P220
%  worst case running time:��(n)

%  ��Ԫ�ظ���������5ʱΪbase case
if ( q-p+1 <= 5 )
    A=Insertion_sort(A,p,q);
    x=A(p+r-1);
    return
end
%  ��A�ֽ�Ϊ5��Ԫ��һ�飬����n/5��
%  ����ÿ��ʹ��Insertion sort����
c=floor((q-p+1)/5);
l=mod(q-p+1,5);
t=[];
for j=p:5:q-l
    A=Insertion_sort(A,j,j+4);
end
%  ���п��ܴ��ڵ�Ԫ�ظ���С��5����
if (l ~= 0)
    A=Insertion_sort(A,5*c+p,q);
    m=q-(5*c+p)+1;
    mid=ceil(m/2);  %  mid��Ÿ������ֵ
    t=A(p+5*c-1+mid);
end
%  ��ÿ�����ֵ���B��
B=[A(p+2:5:q-l-2),t];
%  �ݹ����Select��ѡȡB����ֵ����ֵ��Ϊpivot
pivot=Select(B,1,length(B),ceil(length(B)/2));
%  �ҳ�pivot���±꣬����index
index=Linear_search(A,pivot);
%  ��pivot��A[p]����
A=ArrayExchange(A,p,index);
%  �ݹ�Ѱ�ҵ�rС��Ԫ��
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
    


    

