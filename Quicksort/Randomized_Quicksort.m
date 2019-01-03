function A=Randomized_Quicksort(A,p,r)
if( p < r )
    [A,q]=Randomized_Partition(A,p,r);
    A=Randomized_Quicksort(A,p,q-1);
    A=Randomized_Quicksort(A,q+1,r);
end