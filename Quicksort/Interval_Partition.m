function [A,t,q]=Interval_Partition(A,p,r)
pivothead=A(1,p);
pivotend=A(2,p);
i=r+1;
for j=r:-1:p+1
    if (A(1,j) > pivotend)
        i=i-1;
        [A(:,i),A(:,j)]=Exchange(A(:,i),A(:,j));
    end
end
q=i-1;
t=i;
for j=q:-1:p+1
    if (A(1,j) <= pivotend && A(2,j) >= pivothead)
        t=t-1;
        [A(:,t),A(:,j)]=Exchange(A(:,t),A(:,j));
    end
end
t=t-1;
