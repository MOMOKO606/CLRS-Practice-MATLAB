function index=Bsearch_recursive(A,v,low,high)
%  �ݹ���ʽ�Ķ��ֲ���
%  �㷨���� ϰ��2.3-5
%  T(n)=��(lgn)
%  ȱ�㣺���A�����ȵ���������A�����е�Ԫ�ز����ظ�
if (low > high)
    index=NaN;
    return
end
mid=floor(0.5*(low+high));
if (A(mid) == v)
    index=mid;
    return
elseif (A(mid) < v)
    index=Bsearch_recursive(A,v,mid+1,high);
elseif (A(mid) > v)
    index=Bsearch_recursive(A,v,low,mid-1);
end
    