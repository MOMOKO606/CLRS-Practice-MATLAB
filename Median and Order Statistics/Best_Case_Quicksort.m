function A=Best_Case_Quicksort(A,p,r)
%  ��֤worst case��T��n��=O��nlgn����Quicksort
%  �㷨���� 9.3-3  P223
%  T��n��=O��nlgn��

if ( p < r )
    n=r-p+1;
    mid=floor(n/2);
    [A,pivot]=Select1(A,p,r,mid);
    A=Best_Case_Quicksort(A,p,mid+p-2);
    A=Best_Case_Quicksort(A,mid+p,r);
end
    