function A=Tail_Recursive_Quicksort2(A,p,r)
%  ��tail recursive��ʽд��Randomized Quicksort
%  ���Tail_Recursive_Quicksort1�����Ż�
%  �ƶ����䲢��Զ�����С��������ݹ��������
%  ��T(n)��Randomized Quicksortһ������������Ч����stack depth
while ( p < r )
    [A,q]=Randomized_Partition(A,p,r);
    if (q <= (p+r)/2)
        A=Tail_Recursive_Quicksort2(A,p,q-1);
        p=q+1;
    else
        A=Tail_Recursive_Quicksort2(A,q+1,r);
        r=q-1;
    end
end
