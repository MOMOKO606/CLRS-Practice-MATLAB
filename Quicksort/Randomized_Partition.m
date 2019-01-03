function [A,q]=Randomized_Partition(A,p,r)
x=round(rand()*(r-p))+p;
[A(x),A(r)]=Exchange(A(x),A(r));
[A,q]=Partition1(A,p,r);