function A=Tail_Recursive_Quicksort1(A,p,r)
%  ��tail recursive��ʽд��Randomized Quicksort
%  �ƶ����䲢��Զ������������ݹ��������
%  ��T(n)��Randomized Quicksortһ���������Լ���stack depth
%  ��ջ��ȵ�worst caseΪ��Զ����n-1:1����ʱ��stack depth=n
%            best caseΪ��Զ����1:n-1����ʱ��stack depth=1
while ( p < r )
    [A,q]=Randomized_Partition(A,p,r);
    A=Tail_Recursive_Quicksort1(A,p,q-1);
    p=q+1;
end
