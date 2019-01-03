function [A,q]=Partition(A,p,r)
pivot=A(p);
i=p;
for j=p+1:r
    if (A(j) < pivot)
        i=i+1;
        [A(i),A(j)]=Exchange(A(i),A(j));
    end
end
[A(p),A(i)]=Exchange(A(p),A(i));
q=i;
         
        
