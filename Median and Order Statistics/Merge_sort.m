function [A,inver]=Merge_sort(A,p,r)
%  �鲢���� 
%  �㷨���� 2.3����
%  T(n)=��(nlgn)
%  ����ʵ��2�����ܣ�1.ͳ��A�����е�inversion������2.��A�����������
%  inverΪA��inversion�ĸ���
inver=0;
if p < r
    q=floor(0.5*(p+r));
    [A,a]=Merge_sort(A,p,q);
    [A,b]=Merge_sort(A,q+1,r);
    [A,c]=Merge(A,p,q,r);
    inver=inver+a+b+c;
end