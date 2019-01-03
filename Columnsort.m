function A=Columnsort(A)
%  函数功能：Columnsort
%  注意：行数r必须为偶数行，r能被列数s整除，且r >= 2s^2；

[r,s]=size(A);
if ( mod(r,2) )
    error('矩阵A必须为偶数行！')
    return
end
if ( mod(r,s) )
    error('行数需要可以被列数整除！')
    return
end
if ( r < 2*s^2 )
    error('行数需要大于等于列数平方的二倍！')
    return
end
%  Step1.Sort each column
B=zeros(r,s);
for i=1:s
    B(:,i)=Counting_sort2(A(:,i));
end
%  Step2.Transpose the array
B=reshape(B,s,r);
B=B';
%  Step3.Sort each column
for i=1:s
    A(:,i)=Counting_sort2(B(:,i));
end
%  Step4.Perform the inverse transpose of Step2
A=A';
A=reshape(A,r,s);
%  Step5.Sort each column
for i=1:s
    B(:,i)=Counting_sort2(A(:,i));
end
%  Step6.Shift and transpose
A=[zeros(r/2,1),B(1+r/2:r,:);B(1:r/2,:),zeros(r/2,1)];
%  Step7.Sort each column
for i=1:s
    B(:,i)=Counting_sort2(A(:,i));
end
B=[B,A(:,s+1)];
%  Step8.Perform the inverse transpose of Step6
A=[B(1+r/2:r,1:s);B(1:r/2,2:s+1)];







