function [A,inver]=Merge(A,p,q,r)
%  Merge_sort的子程序，其作用是“合并”
inver=0;
n1=q-p+1;
n2=r-q;
for i=1:n1
    L(i)=A(p-1+i);
end
for i=1:n2
    R(i)=A(q+i);
end
L(n1+1)=+inf;
R(n2+1)=+inf;
i=1;
j=1;
for k=p:r
    if(L(i) <= R(j))
        A(k)=L(i);
        i=i+1;
    else
        A(k)=R(j);
        j=j+1;
        sum=n1-i+1;
        inver=inver+sum;
    end
end