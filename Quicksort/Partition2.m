function [A,q]=Partition2(A,p,r)
%  Quicksort���ӳ����������ǡ����顱
%  T(n)=��(n)
%  ����˿�ʼ����
pivot=A(p);
i=p;
for j=p+1:r
    if(A(j) <= pivot)
        i=i+1;
        [A(i),A(j)]=Exchange(A(i),A(j));
    end
end
[A(i),A(p)]=Exchange(A(i),A(p));
q=i;