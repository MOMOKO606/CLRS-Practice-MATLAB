function index=Bsearch_iterative(A,v,low,high)
%  ������ʽ�Ķ��ֲ���
%  �㷨���� ϰ��2.3-5
%  T(n)=��(lgn)
%  ȱ�㣺���A�����ȵ���������A�����е�Ԫ�ز����ظ�
while(low <= high)
    mid=floor(0.5*(low+high));
    if (A(mid) == v)
        index=mid;
        return
    elseif (A(mid) < v)
        low=mid+1;
    elseif (A(mid) > v)
        high=mid-1;
    end
end
index=NaN;