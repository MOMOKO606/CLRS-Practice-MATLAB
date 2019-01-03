function [A,q]=Quantile(A,p,r,k)
%  ��A[p...r]����k�ȷݻ���,��λ����С�������У���ÿ��������Ԫ��С�ڸ���ķ�λ����
%  ��λ�����±����q
%  �㷨���� 9.3-6 P223
%  T��n��=O(nlgk)

n=r-p+1;
%  ���A�����Ƿ��ܱ��ȷ�Ϊk��
if ( mod(n,k))
    disp('A���鲻�ܱ�ƽ��Ϊk�ȷݣ�')
    return
else
    d=n/k;  %  d��ʾÿ�εĳ���
end
if p > r
    q=[];
    return
end
if ( k == 1 )  %  base case
    q=[];
    return
end
%  ����Select�ҵ���λ�����е㣬��pivot
pivot=Select(A,p,r,d*floor((k+1)/2));
%  �ҳ�pivot���±꣬����index
index=Linear_search(A,pivot);
%  ��pivot��A[p]����
A=ArrayExchange(A,p,index);
%  ͨ��pivot����A����
[A,key2]=Partition(A,p,r);
%  �����ߵݹ�ֶ�
[A,key1]=Quantile(A,p,key2,floor((k+1)/2));
%  ���Ұ�ߵݹ�ֶ�
[A,key3]=Quantile(A,key2+1,r,floor(k/2));
%  �ȷ����±�����q��
q=[key1,key2,key3];
    