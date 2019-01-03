function y=Close2mid(A,p,r,k)
%  �ҳ�A�о�����λ�������������λ������k������
%  k <= n
%  �㷨���� 9.3-7
%  T(n)=O(n)

n=r-p+1;
right=ceil(n/2)+ceil((k-1)/2);
left=ceil(n/2)-floor((k-1)/2);
%  ����λ��
mid=Select(A,p,r,ceil(n/2));
C=[p:r];
%  ���Ԫ������λ���ľ��루��ֵ��
for i=1:n
    B(i)=A(i)-mid;
end
%  �ҳ�����С�ڵ���k��Ԫ��
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



