function A=Selection_sort(A)
%  ѡ������ 
%  �㷨���� ϰ��2.2-2
%  T(n)=��(n^2)
n=length(A);
for i=1:n-1
    key=A(i);
    k=i;
    for j=i+1:n
        if (A(j) < key)
            key=A(j);
            k=j;
        end
    end
    A(k)=A(i);
    A(i)=key;
end