function A=Improved_Quicksort(A,p,r)
%  �Ľ���������������У�Randomized Quicksort��
%  ����median of 3 method���ַ�����
%  ���øĽ���tail recursive��ʽ��Quicksort��
while (p < r)
    [A,q]=Median_of_3_Partition(A,p,r);
    if (q <= (p+r)/2)
        A=Improved_Quicksort(A,p,q-1);
        p=q+1;
    else
        A=Improved_Quicksort(A,q+1,r);
        r=q-1;
    end
end
        