function index=Linear_search(A,v)
%  ���Լ��� 
%  �㷨���� ϰ��2.1-3
%  T(n)=��(n)
n=length(A);
index=[];
for i=1:n
    if(A(i) == v)
        index=[index,i];
    end
end
if (isempty(index))
    index=NaN;
end
        