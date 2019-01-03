function [A,q]=Hoare_Partition(A,p,r)
%  Quicksort���ӳ����������ǡ����顱
%  T(n)=��(n)
%  �����˿�ʼ���֣������Partition��ʽ
pivot=A(p);
i=p;
j=r;
while (i < j)
    while (A(j) > pivot)
        j=j-1;
    end
    while(A(i) < pivot)
        i=i+1;
    end
    if (i < j)
        [A(i),A(j)]=Exchange(A(i),A(j));
        j=j-1;
        i=i+1;
    end
end
q=j;
        