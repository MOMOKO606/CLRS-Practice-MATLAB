function A=Quicksort(A,p,r)
%  ���ؿ�������
%  Worst time:T(n)=��(n^2);
%  Best time:T(n)=��(nlgn);
%  Average time:T(n)=��(nlgn);
%  һ������£���������ȹ鲢�����3��
if ( p < r )
    [A,q]=Partition2(A,p,r);
    A=Quicksort(A,p,q-1);
    A=Quicksort(A,q+1,r);
end