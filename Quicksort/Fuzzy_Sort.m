function A=Fuzzy_Sort(A,p,r)
if (p < r)
    [A,t,q]=Interval_Partition(A,p,r);
    A=Fuzzy_Sort(A,p,t-1);
    A=Fuzzy_Sort(A,q+1,r);
end
    