function [A,q]=Partition3(A,p,r)
%  Quicksort���ӳ����������ǡ����顱
%  T(n)=��(n)
%  ����Partition
pivot=A(r);
i=p-1;
for j=p:r-1
    if (A(j) > pivot)
        i=i+1;
        [A(j),A(i)]=Exchange(A(j),A(i));
    end
end
[A(i+1),A(r)]=Exchange(A(i+1),A(r));
q=i+1;