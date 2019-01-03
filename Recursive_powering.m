function y=Recursive_powering(x,n)
%  Computing x^n,where n is integer and n >= 0
%  It reduces the running time from ¦È(n) to ¦È(lgn) 
if (n == 0)  %  special case
    y=1;
    return 
elseif (n == 1);  %  base case
    y=x;
    return 
end
if (mod(n,2) == 0)  %  if n is even 
    mid=n/2;
    r=Recursive_powering(x,mid);
    y=r*r;
    return  %  if n is odd
else
    mid=(n-1)/2;
    r=Recursive_powering(x,mid);
    y=r*r*x;
end
    