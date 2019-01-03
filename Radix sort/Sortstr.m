function x=Sortstr(x,n,k)
if(n == 1)
    return
end
A=abs(x(:,k))-96;
C=zeros(1,26);
for i=1:n
    C(A(i))=C(A(i))+1;
end
D=C;
for i=2:26
    D(i)=D(i)+D(i-1);
end
for i=n:-1:1
    Index(D(A(i)))=i;
    D(A(i))=D(A(i))-1;
end   
p=(C >= 1);
round=length(C(p));
C=C(p);
x=x(Index,:);
for i=1:round
    n2=C(i);
    x=Sortstr(x,n2,k+1);
end
    





