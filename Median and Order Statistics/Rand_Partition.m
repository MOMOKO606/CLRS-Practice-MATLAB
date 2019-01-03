function [A,q]=Rand_Partition(A,p,r)
x=round(rand*(r-p))+p;
[A(x),A(p)]=Exchange(A(x),A(p));
[A,q]=Partition(A,p,r);