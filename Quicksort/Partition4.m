function [A,t,q]=Partition4(A,p,r)
%  Quicksort���ӳ����������ǡ����顱
%  T(n)=��(n);ʵ����Ϊ��(2��n-1��)
%  ��A����Ϊ�����֣�A��p,...,t-1��<A(q);
%                  A��t,...,q��=A(q);
%                  A��q+1,...,r��>A(q);
pivot=A(r);
i=p-1;
for j=p:r-1
    if (A(j) < pivot)
        i=i+1;
        [A(j),A(i)]=Exchange(A(j),A(i));
    end
end
t=i+1;
q=i;
for j=t:r-1
    if (A(j) == pivot)
        q=q+1;
        [A(j),A(q)]=Exchange(A(j),A(q));
    end
end
[A(q+1),A(r)]=Exchange(A(q+1),A(r));
q=q+1;